class DashboardController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!
    def index

    end
    def show

    end

    
end
