

class HasManyExample::PatientController < ApplicationController
    
    def index
        @patients=Patient.all
        if(@patients.size()<10)
            add_patient
        end
    end
    def new
        @patient=Patient.new
    end
    def create
        @patient=Patient.create(params_patient)
        if(@patient.valid?)
            redirect_to action: 'index'
        else
            render 'new', status: :unprocessable_entity 
        end
    end
    def edit
        @patient=Patient.find_by(id:params[:id])

    end
    def update
        @patient=Patient.find_by(id:params[:id])
        @patient.update(params_patient)
        if(@patient.valid?)
            redirect_to action: 'index'
        else
            render 'edit', status: :unprocessable_entity 
        end
    end
    def destroy
        @temp=Patient.find_by(id:params[:id]);
        if(@temp!=nil)
            @temp.destroy
            redirect_to action: "index"
        end
    end
    private
    def params_patient
        params.require(:patient).permit(:name,:email)
    end    
    def add_patient 
        for value in (1..10) do
            x=Patient.create(name:Faker::Name.unique.name,email:Faker::Internet.email)
    
        end
        
    end
end
