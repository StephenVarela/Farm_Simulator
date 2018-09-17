require './Field.rb'
class WheatField < Field

  def initialize(hectars)
    super('Wheat', hectars)
    @food_per_hectar = 30
  end

  def harvest
    @food = @food_per_hectar*@hectars
    @@Total_Food += @food
    puts "Harvesting #{@food} from a #{@hectars} hectars corn field"
  end

  def relax
    puts "The sun hangs low, casting an orange glow on a sea of #{@hectars} hectares of wheat."
  end

  def status
    puts "This wheat field is #{@hectars} hectars"
  end

end
