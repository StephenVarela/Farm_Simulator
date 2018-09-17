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
