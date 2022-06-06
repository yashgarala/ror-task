class HasManyExample::AppointmentController < ApplicationController
    def index
        @appointments=Appointment.all
        if(@appointments.size()<10)
            add_appoiments
        end
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
    def edit
        @appointment=Appointment.find_by(id:params[:id])

    end
    def update
        @appointment=Appointment.find_by(id:params[:id])
        @appointment.update(appointment_params)
        if(@appointment.valid?)
            redirect_to action: 'index'
        else
            render 'edit', status: :unprocessable_entity 
        end
    end
    def destroy
        @temp=Appointment.find_by(id:params[:id]);
        if(@temp!=nil)
            @temp.destroy
            redirect_to action: "index"
        end
    end
    private 
    def appointment_params
        params.require(:appointment).permit(:physician_id,:patient_id,:appointment_date)
    end
    def add_appoiments
        
        x=Patient.all
        y=Physician.all
        for i in (1..10) do
           begin
           
            Appointment.create(patient:x.sample,physician:y.sample,appointment_date:Faker::Date.forward(days: 30)) 
        rescue => exception
                
        end    
    end
    end
end
