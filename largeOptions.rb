
require 'json'



def createJsonArray(count)
  $i = 0

jsonArray = Array.new()

while $i < count  do
jsonArray.push(
  "label"=> "Element"+$i.to_s,
  "key_value"=> "Element"+$i.to_s,
  "sort_order"=> $i
    )

#  "id"=> 120810244,
#  "name"=> "inspection_datjhkke2jkjk198i"
   
$i += 1
puts $i
end
prettyJson = JSON.pretty_generate(jsonArray)
#puts prettyJson

#jsonArray = jsonArray.to_json
#puts jsonArray
    File.open("elementjsonOptions"+".json", 'a') {|f| f.puts(prettyJson)}

end

createJsonArray(10000)