# Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and the area code would be the value

#  Display the city names to the user which are available in the dictionary

# Get input from the user on the city name (hint: use gets.chomp method)

# Display area code based on user's city choice

# Loop - keep the program running and prompt the user for new city names to lookup

# Method to look up area code, this will take in a hash of the dictionary and the city name and will output area code

# Method to display just city names

dictionary = {
  "Los Angeles" => "213",
  "St. Louis" => "314",
  "Chicago" => "312",
  "Detroit" => "313",
  "Syracuse" => "315",
  "Cleveland" => "216",
  "Philadelphia" => "215",
  "Pittsburgh" => "412",
  "Milwuakee" => "414",
  "Tulsa" => "918"
}

def grab_cities(hash)
  hash.each { |k, v| puts k }
end

def grab_area_code(hash, key)
  hash[key]
end

loop do
  puts "Do you want to look up an area code based on the city name? (Y/N): "
  answer = gets.chomp.upcase
  if answer != "Y"
    break
  end
   puts "What city do you want to look up?"
   grab_cities(dictionary)
   city = gets.chomp
   if dictionary.include?(city)
     puts "Great! One moment...\nThe area code for #{city} is #{grab_area_code(dictionary, city)}."
   else
     puts "You entered an invalid choice."
   end
end
