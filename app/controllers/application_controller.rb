class ApplicationController < ActionController::Base
    def index
        @admin = current_admin
        @admins = Admin.all
    end
end
