require 'test_helper'

class MealTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meal_types_index_url
    assert_response :success
  end

end
