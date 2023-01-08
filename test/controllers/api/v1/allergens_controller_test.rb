require 'test_helper'

class Api::V1::AllergensControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get api_v1_allergens_index_url
    assert_response :success
  end
end
