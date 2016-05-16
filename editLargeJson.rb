require 'json'

file = File.read('elementIDs.json')
data_hash = JSON.parse(file)

#puts file.length
puts data_hash[2]
#data_hash[2] = {"id" => 120810268, "sort_order" => 3}
data_hash[2]["sort_order"] = 3
puts data_hash[2]
#puts data_hash


a = (0..199).to_a.shuffle 

new_id = a.pop
$i = 0
 a = (0..199).to_a.shuffle 

#new_id = Array.new
idArray = Array.new
while $i < 99  do
new_id = a.pop
data_hash[$i]["sort_order"] = new_id
new_sort = data_hash[$i]
puts new_sort
idArray.push(new_sort)

# puts new_id
 $i+=1
end
newSort = JSON.pretty_generate(idArray)
#puts idArray.to_json
    File.open("elementjsonEdit"+".json", 'a') {|f| f.puts(newSort)}

