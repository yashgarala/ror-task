class HasManyExample::PhysicianController < ApplicationController

    def index
        @physicians=Physician.all
    end
    def new
        @physician=Physician.new
    end
    def create
        @physician=Physician.create(params_physician)
        if(@physician.valid?)
            redirect_to action: 'index'
        else
            render 'new', status: :unprocessable_entity 
        end
    end
    private
    def params_physician
        params.require(:physician).permit(:name,:email)
    end 
end
