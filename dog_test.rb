require "minitest/autorun"
require_relative "dog"

class DogTest < MiniTest::Test

    def setup
        @pup = Dog.new("Otis")
        @otis = Animal.new("Otis", "Aussie")
    end

    def test_initialize_one_arg
        assert_equal "Otis", @pup.name
        assert_equal "Dog", @pup.species
        assert_equal 0, @pup.speed
        assert_equal 0, @pup.legs
    end

    def test_initiialize_two_args
        assert_equal "Otis", @otis.name
        assert_equal "Aussie", @otis.species
        assert_equal 0, @otis.speed
        assert_equal 0, @otis.legs
    end

    def test_if_name_is_correct
        assert_equal "Otis", @pup.name
        assert_equal "Otis", @otis.name
    end

    def test_if_name_is_an_acceptable_property
        @pup.name = "Houser"
        assert_match @pup.name, "Houser"
    end

    def test_if_species_is_an_acceptable_property
        @pup.species = "Dog"
        assert_match @pup.species, "Dog"
        assert_match @otis.species, "Aussie"
    end

    def test_if_speed_is_an_acceptable_property
        @pup.speed = 12
        assert_equal @pup.speed, 12
    end

    def test_if_legs_is_an_acceptable_property
        @pup.legs = 2
        assert_equal @pup.legs, 2
    end

    def test_if_name_is_a_string
        assert_instance_of String, @pup.name    
    end

    def test_if_species_is_a_string
        assert_instance_of String, @pup.species   
    end

    def test_if_speed_is_an_integer
        assert_instance_of Integer, @pup.speed   
    end

    def test_if_speed_is_a_float
        @pup.speed = 50.4
        assert_instance_of Float, @pup.speed   
    end

    def test_if_legs_is_an_integer
        assert_instance_of Integer, @pup.legs   
    end

    def test_if_legs_is_a_float
        @pup.legs = 2.5
        assert_instance_of Float, @pup.legs
    end

    def test_walk_when_legs_is_greater_than_zero
        current_speed = @pup.speed
        @pup.walk
        assert_equal (current_speed + (0.1 * @pup.legs)), @pup.speed
    end

    def test_if_instance_of_pup
        assert_instance_of Dog, @pup
    end

end