require 'csv'

attributes = CSV.read('deduped.csv', {headers: false})

exportArr = Array.new

attributes.each do |row|
	row = row[0].to_s + row[1..-1].sort.to_s
	exportArr << row
	puts row.to_s
end

File.write('final-deduped.txt', exportArr)
