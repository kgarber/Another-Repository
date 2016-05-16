require 'json'

file = File.read('elementIDs.json')
data_hash = JSON.parse(file)

#puts file.length
puts data_hash[2]
#data_hash[2] = {"id" => 120810268, "sort_order" => 3}
data_hash[2]["sort_order"] = 3
puts data_hash[2]
#puts data_hash

iterations = 70

if iterations > 99
	counts=99
elsif iterations <100
	counts=iterations
end

a = (0..99).to_a.shuffle 

new_id = a.pop
$i = 0
 a = (0..99).to_a.shuffle 

#new_id = Array.new
varablesAry = Array.new
testArray = Array.new
varablesAry100 = Array.new
testArray100 = Array.new
idArray = Array.new
declareVar = Array.new
while $i <= counts  do
new_id = a.pop
data_hash[$i]["sort_order"] = new_id
new_sort = data_hash[$i]
puts new_sort
idArray.push(new_sort)

if new_id <100
	

varablesAry.push("var "+data_hash[$i]["name"]+"info = getSortByName(\""+data_hash[$i]["name"]+"\");")
testArray.push("tests[\""+data_hash[$i]["name"]+"\"] = "+data_hash[$i]["name"]+"info[0].sort_order === "+new_id.to_s+";")
declareVar.push("postman.setEnvironmentVariable(\""+data_hash[$i]["name"]+"id\", "+data_hash[$i]["name"]+"info[0].id)")
else
varablesAry100.push("var "+data_hash[$i]["name"]+"info = getSortByName(\""+data_hash[$i]["name"]+"\");")
testArray100.push("tests[\""+data_hash[$i]["name"]+"\"] = "+data_hash[$i]["name"]+"info[0].sort_order === "+new_id.to_s+";")
# puts new_id
end
 $i+=1

end
newSort = JSON.pretty_generate(idArray)
#puts idArray.to_json
    File.open("elementjsonEdit"+".json", 'w') {|f| f.puts(newSort)}
    #File.open("variableTest"+".json", 'a') {|f| f.puts(newSort)}
puts varablesAry
puts testArray

    File.open("elementjsonEdit-100"+".json", 'w') {|f| f.puts(varablesAry+testArray+declareVar)}
    File.open("elementjsonEdit+100"+".json", 'w') {|f| f.puts(varablesAry100+testArray100)}
