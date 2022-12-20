require 'test_helper'

class Api::V1::HungersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get api_v1_hungers_index_url
    assert_response :success
  end
end
