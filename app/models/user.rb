class User < ApplicationRecord
    # Necessary to authenticate.
  has_secure_password
  validates :email, presence: true
  # Basic password validation, configure to your liking.
  def to_token_payload
    {
        sub: id,
        email: email
    }
end

  # This method gives us a simple call to check if a user has permission to modify.
  def can_modify_user?(user_id)
    role == 'admin' || id.to_s == user_id.to_s
  end

  # This method tells us if the user is an admin or not.
  def is_admin?
    role == 'admin'
  end

end
