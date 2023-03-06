#in ruby hashes are the same as object or diccionaries
my_details = {'name' => 'Eduardo', 'favcolor' => 'Blue' } #this is how you can strucutre a hash
puts my_details['name'] #this is how you can use the value of a kwy value pair hash 
#podemos usar dentro de los hashes keys symbols que son basicamente sin strings es decir { key => 'value'}
#la diferencai entre los symbols y los strings es que los symbols no son mutables y se almacenan una sola vez
#a diferencia de key en type string, asi que es mas recomendado usarlos de esa manera
#un symbolo se declara poniendo dos puntos antes del nmombre de tu symbol ejemplo ":symbol_name"
#pero dentro de los hashes no hace falta poner los dos puntos ya que ruby sabe por defecto que se trata de un symbol
#error parece ser que al menos en mi version de ruby si debo poner los dos puntos si quiero que funcione
another_hash = { :a => 1, :b => 2, :c => 3 }
puts another_hash[:b]
#para saber los keys dentro de un hash es 
p another_hash.keys
puts
#y lo mismo con los valores 
p another_hash.values
puts
#we can iterate in hashes using the each do ||
my_details.each do |key, value|
    puts "the class for key is #{key.class} and the value class is #{value.class}"
end
#to add a key value to an hash we use 
another_hash[:d] = "Eddie"
p another_hash
puts
#the order in hashes is not important
#to change the value of a hash
another_hash[:b] = "someone"
p another_hash
puts
#iterating hashes in one line 
another_hash.each { |some_key, some_value| puts "the key is #{some_key} and the value is #{some_value}" }
#using the select
print another_hash.select { |k, v| v.is_a?(String) }
puts
print another_hash.select { |k, v| v == 'Eddie' }
puts
print another_hash.select { |k, v| k == :b }
#to eliminate for example a numbers fron a hash where I only whant to have string velues
p another_hash.each { |k, v| another_hash.delete(k) if v.is_a?(Integer) }
puts
p another_hash
puts
