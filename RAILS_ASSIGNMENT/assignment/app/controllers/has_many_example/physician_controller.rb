class HasManyExample::PhysicianController < ApplicationController

    def index
        @physicians=Physician.all
        if(@physicians.size()<10)
            add_physician
        end
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
    def edit
        @physician=Physician.find_by(id:params[:id])

    end
    def update
        @physician=Physician.find_by(id:params[:id])
        @physician.update(params_physician)
        if(@physician.valid?)
            redirect_to action: 'index'
        else
            render 'edit', status: :unprocessable_entity 
        end
    end
    def destroy
        @physician=Physician.find_by(id:params[:id]);
        if(@physician!=nil)
            @physician.destroy
            redirect_to action: "index"
        end
    end
    private
    def params_physician
        params.require(:physician).permit(:name,:email)
    end
    def add_physician
        for value in (1..10) do
            x=Physician.create(name:"Dr. "+Faker::Name.unique.name,email:Faker::Internet.email)
    
        end
        
    end 
end
