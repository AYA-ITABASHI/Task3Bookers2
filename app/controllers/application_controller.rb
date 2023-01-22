class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?
      def after_sign_in_path_for(resource)
       flash[:notice]="ログインに成功しました。"
       books_path
      end


     def after_sign_up_path_for(resource)
      new_user_session_path
       flash[:notice]="新規登録に成功しました。"
       user_path(current_user.id)
     end

  def after_sign_out_path_for(resource)
      flash[:notice]="ログアウトに成功しました。"
      
    root_path
  end

 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
 end
end
