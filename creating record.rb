
require 'json'



def createJsonArray(count)
	$i = 0

jsonArray = Array.new()

while $i < count  do
jsonArray.push(
  "element_name" => "my_element"+$i.to_s,
  "value"=> "Element"+$i.to_s
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
    File.open("recordjson"+".json", 'a') {|f| f.puts(prettyJson)}

end

createJsonArray(50)
