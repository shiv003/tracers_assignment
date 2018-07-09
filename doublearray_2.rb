class Double
	def double_array(arr)
	
      arr.map{|n| n.kind_of?(Integer)? n*2 : n}
	end
end	


arr = [1,2,3,"hi",5,6]

ob = Double.new

arr1 = []

arr1 = ob.double_array(arr)

print arr1


