require './Field.rb'
class CornField < Field

  def initialize(hectars)
    super('corn', hectars)
    @food_per_hectar = 20
  end

  def harvest
    @food = @food_per_hectar*@hectars
    @@Total_Food += @food
    puts "Harvesting #{@food} from a #{@hectars} hectars corn field"
  end

  def relax
    puts "#{@hectars} hectares of tall green stalks rustling in the breeze fill your horizon."
  end

  def status
    puts "This corn field is #{@hectars} hectars"
  end

end
