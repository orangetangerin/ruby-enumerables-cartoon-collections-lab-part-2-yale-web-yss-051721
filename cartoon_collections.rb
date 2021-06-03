def square_array(array)
  # Use an Enumerable to square every element in the passed in array
  # Return a new array of the results
  array.map do |num|
    num ** 2
  end
end

def summon_captain_planet(planeteer_calls)
  # Use an Enumerable to capitalize and add '!' to every element in the passed in array
  # Return a new array of the results
  planeteer_calls.map do |string|
    string.concat("!")
    string.capitalize
  end
end

def long_planeteer_calls(planeteer_calls)
  # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
  # Return the boolean result of this check
  greater = false
  planeteer_calls.each do |string|
    if string.length > 4
      greater = true
    end
  end
  greater
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found
  planeteer_calls.find do |string|
    count = 0
    while count < valid_calls.length do
      if string == valid_calls[count]
        return string
      end
      count += 1
    end
  end
end
