# Use the case control structure to identify the class to which the obj belongs
# QUESTION ONE
def identify_class(obj)
    case  obj
      when "Hacker"
         puts "It's a Hacker!"
      when "Submission"
        puts "It's a Submission!"
      when "TestCase"
        puts "It's a TestCase!"
      when "Contest"
         puts "It's a Contest!"
      else
        puts "unknown model"
    end
end


# QUESTION TWO
def iterate_colors(colors)
  # Your code here
    names = colors.collect do |color|
        color
    end
    names
end

# OR 
def iterate_colors(colors)
  # Your code here
    names = colors.collect {|color| color}
end


# QUESTIOM THREE
def skip_animals(animals, skip)
  # Your code here
    result = []
    chosen = animals.map.with_index do |animal, index|
        if index >= skip
            result << "#{index}:#{animal}"
        end
    end
    result
end

# QUESTION FOUR
# https://dueacaso.it/tech/ruby-tr/
def rot13(secret_messages)
  # your code here
    secret_messages.map do |string|
        string.tr("A-Za-z", "N-ZA-Mn-za-m")
    end
end

# or 
# https://medium.com/@huy.phung.sw/solved-rot13-f83c6042d20c
def decode_char(char)
  case char
    when 'a'..'m', 'A'..'M'
      char.ord + 13
    when 'n'..'z', 'N'..'Z'
      char.ord - 13
    else
      char.ord
  end.chr
end

def decode_word(word)
  new_word = word.chars.map do |char|
    decode_char(char)
  end.join
end

def rot13(messages)
  messages.map do |message|
    decode_word(message)
  end
end

# QUESTION FIVE
def sum_terms(n)
  # your code here
    num = (1..n).reduce(0) {|sum, i| sum + i**2 + 1}
    num.to_i
end

# QUESTION SIX
def func_any(hash)
  # Check and return true if any key object within the hash is of the type Integer
  # If not found, return false.
  hash.any? {|key, value| key.is_a? Integer}
end

def func_all(hash)
  # Check and return true if all the values within the hash are Integers and are < 10
  # If not all values satisfy this, return false.
  hash.all? {|key, value| value.is_a?(Integer) && value < 10}
end

def func_none(hash)
  # Check and return true if none of the values within the hash are nil
  # If any value contains nil, return false.
  hash.none? {|key, value| value.nil?}
end

def func_find(hash)
  # Check and return the first object that satisfies either of the following properties:
  #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
  #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
  hash.find do |key, value|
      (key.is_a?(Integer) && value.is_a?(Integer) && value < 20) ||
      (key.is_a?(String) && value.is_a?(String) && value[0] == 'a')
  end
end

# QUESTION SEVEN
def group_by_marks(marks, pass_marks)
  marks.group_by { |name, marks_obtained| marks_obtained >= pass_marks ? 'Passed' : 'Failed' }
end

# QUESTION EIGHT
def take(arr, n=1)
  arr[n..-1]
end

# QUESTION NINE
def convert_temp(temperature, input_scale:, output_scale: 'celsius')
  case input_scale
  when 'celsius'
    case output_scale
    when 'fahrenheit'
      temperature * 9/5.0 + 32
    when 'kelvin'
      temperature + 273.15
    else
      temperature
    end
  when 'fahrenheit'
    case output_scale
    when 'celsius'
      (temperature - 32) * 5/9.0
    when 'kelvin'
      (temperature + 459.67) * 5/9.0
    else
      temperature
    end
  when 'kelvin'
    case output_scale
    when 'celsius'
      temperature - 273.15
    when 'fahrenheit'
      temperature * 9/5.0 - 459.67
    else
      temperature
    end
  else
    temperature
  end
end
