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
    
  def get_planets_with_more_moons(number)
    planets_with_moons = @planets.find_all do |planet| 
        if planet.number_of_moons >= number
          planet_name
        end
      end
      
    return planets_with_moons.find_all { |name| planets_with_moons.name}
  end

  # def test_get_names_of_planet_with_more_than_four_moons
  #   skip
  #   expected_names = ["Jupiter", "Neptune", "Saturn", "Uranus"]
  #   result = @solar_system.get_planets_with_more_moons(4)
  #   assert_equal(expected_names, result)
  # end
end

