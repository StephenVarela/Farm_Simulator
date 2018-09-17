
require './CornField.rb'
require './WheatField.rb'
##Testing

class Farm_Simulator

  def simulate
    while true
      display_ui
    end
  end

  def display_ui
    puts "\e[H\e[2J"
    puts "----------------"
    puts "field -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status -> displays some information about the farm"
    puts "relax -> provides lovely descriptions of your fields"
    puts "exit -> exits the program"
    puts "----------------"
    user_input = gets.chomp

    if(user_input == "field")
      field
    elsif(user_input == "harvest")
      harvest
    elsif(user_input == "status")
      status
    elsif(user_input == "relax")
      relax
    elsif(user_input == "exit")
      puts "\e[H\e[2J"
      exit 0
    end
    puts "Press enter key to continue"
    gets
  end

  def field
    puts "What kind of field is it: corn? or wheat?"
    field_type = gets.chomp
    puts "How large is the field in Hectars?"
    hectars = gets.chomp.to_i

    if(field_type.downcase == "corn")
      CornField.new(hectars)
      puts "added a corn field of #{hectars} hectars"
    elsif(field_type.downcase == "wheat")
      WheatField.new(hectars)
      puts "added a wheat field of #{hectars} hectars"
    else
      puts "Error Incorrect input"
    end

  end

  def harvest
    Field.harvest
  end

  def status
    Field.status
  end

  def relax
    Field.relax
  end

end

my_farm = Farm_Simulator.new
my_farm.simulate
