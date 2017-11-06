require 'csv'

completions = CSV.read('test3.csv', {headers: false})
functions = CSV.read('test3.csv', {headers: false})

completions.each do |x|
	count = 0
	x.each do |y|
		#puts y
		if (count > 0)
			functions.each do |z|
				#puts y[2..-1]

				if y == z[0]
					puts y.to_s + ' : ' + z[1..-1].to_s
					y << z[1..-1].to_s
				end
			end
		end
		count += 1;
	end
end

#puts completions

File.write('test4.txt', completions)

#puts completions[1,1]
#puts functions[0][0]