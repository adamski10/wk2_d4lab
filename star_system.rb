require ('pry')

class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets = [])
    @name = name
    @planets = planets
  end

  def planet_names
    # planet_names = []
    # for planet in @planets
    #   planet_names << planet.name
    # end
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
    # planet_names = []
    # for planet in @planets
    #   if planet.number_of_moons > 4
    #     planet_names << planet.name
    #   end
    # end

    planets_with_more_moons = @planets.find_all { |planet| planet.number_of_moons > 4 }
    return planets_with_more_moons.map {|planet| planet.name}
  end

    def get_number_of_planets_closer_than(number)
      planets_closer_than = @planets.find_all { |planet| planet.distance_from_sun < 1000}
      return planets_closer_than.count
    end

    def get_largest_planet
      planets_sizes = @planets.sort_by { |planet| planet.diameter}
      return planets_sizes.reverse[0]
    end

    def get_smallest_planet
      planets_sizes = @planets.sort_by { |planet| planet.diameter}
      return planets_sizes[0]
    end
    
    def get_total_number_of_moons
      number_of_moons = @planets.reduce(0) { |total, planet| total + planet.number_of_moons}
      return number_of_moons
    end

    def get_planet_names_sorted_by_increasing_distance_from_sun
      planets_by_increasing_distance = @planets.sort_by {|planet| planet.distance_from_sun}
      return planets_by_increasing_distance.map { |planet| planet.name}
    end

    def get_planet_names_sorted_by_size_decreasing
      planets_by_size = @planets.sort_by { |planet| planet.diameter}
      planets_by_size_decreasing = planets_by_size.reverse
      return planets_by_size_decreasing.map { |planet| planet.name}

    end
    
  
end

