require 'date'
output_file =File.open("output.txt",'w')
f=File.open("input.txt")
arr=f.readlines
today_date= DateTime.now

arr.each do |i|
    dob=DateTime.strptime(i,"%d-%m-%Y")
    total_year=today_date.year-dob.year
    output_file.write(total_year,"\n")
end
