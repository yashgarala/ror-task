class HasManyExample::AppointmentController < ApplicationController
    def index
        @appointments=Appointment.all
    end
    def new 
        @physicians=Physician.all
        @patients=Patient.all
        @appointment=Appointment.new;
    end
    def create 
        p appointment_params
        @appointment=Appointment.create(appointment_params)
        if(@appointment.valid?)
            redirect_to action: 'index'
        else
            render 'new', status: :unprocessable_entity 
        end
    end
    private 
    def appointment_params
        params.require(:appointment).permit(:physician_id,:patient_id,:appointment_date)
    end
end
