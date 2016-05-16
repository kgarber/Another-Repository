
require 'json'



def createJsonArray(count)
	$i = 0
createElements = 0
jsonArray = Array.new()
if createElements == 1
while $i < count  do
jsonArray.push(
  "name"=> "element"+$i.to_s,
  "label"=> "Element"+$i.to_s,
  "description"=> "description"+$i.to_s,
  "data_type"=> 5,
  "data_size"=> 50,
  "sort_order"=> $i,
  "low_value"=> 0,
  "high_value"=> 0,
  "dynamic_value"=> "",
  "is_required"=> false,
  "condition_value"=> "",
  "client_validation"=> "",
  "is_disabled"=> false,
  "reference_id_1"=> "1",
  "reference_id_2"=> "2",
  "reference_id_3"=> "3",
  "reference_id_4"=> "4",
  "reference_id_5"=> "5",
  "attachment_link"=> "",
  "is_readonly"=> false,
  "validation_message"=> "",
  "is_action"=> false,
  "smart_tbl_search"=> "",
  "smart_tbl_search_col"=> "",
  "is_encrypt"=> false,
  "is_hide_typing"=> false,
  "on_change"=> "",
  "keyboard_type"=> 0,
  "dynamic_label"=> "",
  "weighted_score"=> 0
  )

#  "id"=> 120810244,
#  "name"=> "inspection_datjhkke2jkjk198i"
   
$i += 1
#puts $i
end
prettyJson = JSON.pretty_generate(jsonArray)
#puts prettyJson

#jsonArray = jsonArray.to_json
#puts jsonArray
    File.open("elementjson"+".json", 'w') {|f| f.puts(prettyJson)}
end
if createElements == 0 
  while $i < count  do
jsonArray.push(
  "key_value"=> "element"+$i.to_s,
  "label"=> "Element"+$i.to_s,
  "sort_order"=> $i,
  
  )

#  "id"=> 120810244,
#  "name"=> "inspection_datjhkke2jkjk198i"
   
$i += 1
#puts $i
end
prettyJson = JSON.pretty_generate(jsonArray)
#puts prettyJson

#jsonArray = jsonArray.to_json
#puts jsonArray
    File.open("optionjson"+".json", 'w') {|f| f.puts(prettyJson)}
end
end

createJsonArray(10000)