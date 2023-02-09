# Use the case control structure to identify the class to which the obj belongs
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