module HasManyExample::AppointmentHelper
    def getPhysicians
        physicians=Physician.all
        physicians.collect{|d| [d.name,d.id]}
    end
    def getPatients
        patients=Patient.all
        patients.collect{|d| [d.name,d.id]}    
    end
end
