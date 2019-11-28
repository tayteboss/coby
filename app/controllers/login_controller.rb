class LoginController < ApplicationController

    def login
        render :index 
    end

    def verify_account

        user = User.find_by(email:"#{params[:email]}")

        if user == user.authenticate("#{params[:password]}")
            session[:current_user_id] = user.id
            redirect_to '/home'
        else
            redirect_to '/login'
        end
    
    end

end