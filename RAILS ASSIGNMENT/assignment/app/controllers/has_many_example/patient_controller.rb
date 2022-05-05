class HasManyExample::PatientController < ApplicationController
    
    def index
        @patients=Patient.all
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
    private
    def params_patient
        params.require(:patient).permit(:name,:email)
    end    
end
