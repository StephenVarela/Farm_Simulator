class Field
  @@fields = []
  @@Total_Food = 0


  def initialize(type, hectars)
    @type = type
    @food = 0
    @hectars = hectars
    @@fields << self
  end

  def type
    return type
  end

  def hectars
    return hectars
  end


  def description
    puts "This is a #{hectars} hectars large #{type} field"
  end

  def self.view_fields
    return @@fields
  end

  def self.harvest
    @@fields.each do |field|
      field.harvest
    end
    puts "The Farm has harvested #{@@Total_Food} food so far"
  end

  def self.relax
    @@fields.each do |field|
      field.relax
    end
    puts "Life is good"
  end

  def self.status
    @@fields.each do |field|
      field.status
    end
    puts "The Farm has harvested #{@@Total_Food} food so far"
  end

end

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
