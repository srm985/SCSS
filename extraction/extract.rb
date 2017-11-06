require 'csv'

completions = CSV.read('completions-new.csv', {headers: false})
functions = CSV.read('finalized-merged-types.csv', {headers: false})

completions.each do |x|
	count = 0
	x.each do |y|
		if y[0] == 't' && count > 0
			functions.each do |z|
				#puts y[2..-1]
				if y[2..-1] == z[0]
					#puts z[1..-1].to_s
					y << z[1..-1].to_s
				end
			end
		end
		count += 1
	end
end

puts completions

File.write('final-export.txt', completions)

#puts completions[1,1]
#puts functions[0][0]