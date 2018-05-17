class AdminsController < ApplicationController
    
       
    def index
       @admins = Admin.all
    end
    
    def show
        @admin = Admin.find(params[:id])
    end

    def edit
        @admin = Admin.find(params[:id])
    end

    def update
        @admin = Admin.find(params[:id])
        @admin.update(admin_params)
        redirect_to '/admins'
    end

    

    def destroy
        Admin.find(params[:id]).destroy
        redirect_to '/admin'
    end

    def new 
        @admin = Admin.new
    end

    def create 
        Admin.create(admin_params)
        redirect_to '/admin'
    end

    private

def admin_params
    params.require(:admin).permit(:first_name, :last_name, :dob, :email, :education, :bio, :password, :avatar)
end

end
