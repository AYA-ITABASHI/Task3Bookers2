class ApplicationController < ActionController::Base
 def autheniticate_user
  if current_user==nil
     redirect_to ("/users/sign_in")
  end
 end
 before_action :configure_permitted_parameters, if: :devise_controller?
      def after_sign_in_path_for(resource)
       user_path(current_user.id)
      end
        def after_sign_up_path_for(resource)
            user_path(current_user.id)
        end



  def after_sign_out_path_for(resource)
    root_path
  end

 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
 end
end
