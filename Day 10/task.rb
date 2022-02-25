require 'date'
class Batch 
    
    def method_missing(m,*args,&blcok)
        puts "#{m.to_s} Method is does not exist "
    end
    STATE=%i[drafted emailed approved]

    attr_accessor :status

    # return true or false is email in this perticuler state or not  
    STATE.each do |method_name|
        define_method "#{method_name}" do 
            status == method_name.to_s
        end
    end
end
# class eval
Batch.class_eval do
   
    attr_accessor :auto_send ,:send_time
    
end

batch =Batch.new
batch.auto_send=true
batch.send_time="7/2/2022 14:12:22"

puts "This email is drafted ? :#{batch.drafted}"
batch.send(:status=,"emailed")
puts "This email is emailed ? :#{batch.emailed}"
puts "this email is auto send ?:#{batch.auto_send}"
puts "auto send date  ?:#{batch.send_time}"

# example of instance_eval
batch.instance_eval do 
    
    def last_update_time()
        return @last_update_time
    end
    def last_access_time()
        return @last_access_time
    end
    def signature
        @last_access_time=Time.now
        return @signature
    end
    def signature=(signature)
        @last_update_time=Time.now
        @signature=signature
    end
    
end


batch.signature="Thank you for reading\n"
puts "Last Update time of signature :#{batch.last_update_time}"
# sleep(5)
puts "signature: #{batch.signature}"
puts "Last access time of signature :#{batch.last_access_time}"

company_email=Batch.new
puts "----------company email----------"


company_email.auto_send=true
company_email.send_time='1/3/2022 14:12:22.00'

puts "This email is drafted ? :#{company_email.drafted}"
company_email.send(:status=,"emailed")
puts "This email is emailed ? :#{company_email.emailed}"
puts "this email is auto send ?:#{company_email.auto_send}"
puts "auto send date  ?:#{company_email.send_time}"
company_email.signature="Thank you for reading\n"
puts "Last Update time of signature :#{company_email.last_update_time}"
# sleep(5)
puts "signature: #{company_email.signature}"
puts "Last access time of signature :#{company_email.last_access_time}"

def company_email.snooze
    curent_date =DateTime.strptime(self.send_time, '%d/%m/%Y  %H:%M:%S')
    # p self.send_time
    
    curent_date=curent_date+1
    # flux_capacitor(curent_date, 10)
    # p curent_date
    
    self.send_time=curent_date.to_s
    
end
company_email.snooze
p "After snooze send time is #{company_email.send_time}"