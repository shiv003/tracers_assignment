require 'csv'

class Program

  def read_csv

       arr = CSV.parse(File.read('/home/rails/unupdated_file.csv'))
         multiple  = Array.new

       arr.each do |row|
       
    	puts row.inspect
    
      end

CSV.foreach('/home/rails/unupdated_file.csv', converters: :numeric) do |row|
    
     multiple << row[0]*row[1]

    end
  
    puts multiple

   arr.each do |pro|

     pro << multiple.shift
     end

   CSV.open('/home/rails/unupdated_file.csv','w') do |csv_object|
     
      arr.each do |row_arrray|

       csv_object << row_arrray
   end
end
  #      arr1 = CSV.parse(File.read('/home/rails/Downloads/unupdated_file.csv'))

  puts arr
  end

end


ob = Program.new
ob.read_csv


