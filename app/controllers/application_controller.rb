class ApplicationController < ActionController::API
    # Include Knock within your application.
  include Knock::Authenticable
  
  protected

  # def unauthorized_new
  #   head :unauthorized
  # end
  
  # Method for checking if current_user is admin or not.
  def authorize_as_admin

    return head(:unauthorized) unless !current_user.nil? && current_user.is_admin? 
      
    
    end
  

  # def authorize_as_admin

  #  if !current_user.nil? && current_user.is_admin? 
    
  # else
  #  render json: { status: 403, msg: 'You are not admin.'}
  # end
  # end

end
