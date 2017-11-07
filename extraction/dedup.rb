require 'csv'

attributes = CSV.read('final.csv', {headers: false})

attributes.map! {|row| row.uniq}

#puts completions

File.write('deduped.txt', attributes)

#puts completions[1,1]
#puts functions[0][0]
