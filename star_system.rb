require ('pry')

class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets = [])
    @name = name
    @planets = planets
  end

  def planet_names
    planet_names = @planets.map { |planet| planet.name }
    return planet_names    
  end

  def get_planet_by_name(planet_name)
    planet_by_name = @planets.find { |planet| planet.name == planet_name }
    return planet_by_name
  end
  
  def get_planets_with_no_moons
    planets_without_moons = @planets.find_all { |planet| planet.number_of_moons == 0 }
    return planets_without_moons    
  end
    
end

# def test_get_planets_with_no_moons
#   expected_planets = [ @mercury, @venus ]
#   result = @solar_system.get_planets_with_no_moons
#   assert_equal(expected_planets, result)
# end