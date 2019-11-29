class SignupController < ApplicationController

    def signup
        render :index 
    end

    def create_user
        
        User.create(
            email: params[:email] ,
            password: params[:confirm_password],
            first_name: params[:firstname],
            last_name: params[:lastname],
            dob: params[:dob],
            gender: params[:gender],
            location: params[:location],
            avatar: params[:avatar]
        )

        redirect_to '/onboarding'
    end



end
