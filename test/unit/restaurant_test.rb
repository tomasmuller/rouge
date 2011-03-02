require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def test_can_create_restaurant_with_only_name
    Restaurant.create! :name => "Restaurante do Tomás"
  end

  def test_can_instantiate_and_save_a_restaurant
    restaurant = Restaurant.new
    restaurant.name = "Pánela de Barro"
    restaurant.description = <<DESC
One of the best Italian restaurants in the Kings Cross area,
Mediterraneo will never leave you disappointed.
DESC
    restaurant.address = "Rua Marechal Floriano 1234, tanana"
    restaurant.phone = "+55 51 34221234"

    restaurant.save!
  end

  def test_that_name_is_required
    restaurant = Restaurant.new
    assert !restaurant.valid?
  end

end
