class SessionController < ApplicationController
    
    def login
        render :index 
    end

    def verify_account
        user = User.find_by(email:"#{params[:email]}")

        if user == user.authenticate("#{params[:password]}")
            session[:current_user_id] = user.id
            session[:current_user_first_name] = user.first_name

            redirect_to '/'
        else
            redirect_to '/login'
        end
    
    end

    def logout
        session[:current_user_id] = nil
        redirect_to '/'
    end

end