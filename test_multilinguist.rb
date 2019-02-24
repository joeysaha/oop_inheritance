require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def test_travel_to_Mexico_and_say_Hello_how_are_you
    person1 = Multilinguist.new
    person1.travel_to('Mexico')
    message1 = person1.say_in_local_language('Hello how are you')
    assert(message1, 'Hola como estas')
  end

  def test_travel_to_France_check_language
    person2 = Multilinguist.new
    person2.travel_to('France')
    assert(person2.language_in('France'), 'fr')
  end
end
