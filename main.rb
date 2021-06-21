require 'colorize'

def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(" ")
end


def run_greeter
  puts "What is your name?".green
  name = gets.chomp
  nametest = name.capitalize
  puts "What is your password?"
  password = gets.chomp
  
  if (nametest == "Megan" || nametest == "Meg" || nametest == "Megan mcgregor" || nametest == "Meg mcgregor" || nametest == "Meg m" || nametest == "Megan m") && password == "Tomas"
    puts "What is the name of your first pet?"
    pet = gets.chomp
    pet = pet.capitalize
    if pet == "Aja"
      puts "Greetings, Creator."
    else
      puts "Try again, hacker."
      run_greeter
    end
      
  elsif (nametest == "Prince" || nametest == "The artist formerly known as prince" || nametest == "Prince nelson rodgers" || nametest == "The kid") && password == "darlingNikki"
      puts "What is the name of the greatest nightclub in Minneapolis?"
      nightclub = gets.chomp
      nightclub=titleize(nightclub.downcase)
      if nightclub == "First Avenue" || nightclub == "First Ave." || nightclub == "First Ave"
        puts "Greetings, Prince."
      else  
        puts "Try again, hacker."
        run_greeter
      end
  else 
      puts "Sorry, " + name + " is not an authorized user."
      run_greeter
  end 
end

run_greeter