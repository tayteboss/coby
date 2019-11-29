class ProfileController < ApplicationController

    def index
        render :profile
    end

    def edit
        render :edit
    end

    def update

        user = User.find_by(id:"#{params[:userid]}")
        
        user.update(
            first_name: params[:firstname], 
            last_name: params[:lastname], 
            dob: params[:dob], 
            email: params[:email],
            location: params[:location],
            gender: params[:gender],
            avatar: params[:avatar]
        )
    

    redirect_to '/profile'

    end

end