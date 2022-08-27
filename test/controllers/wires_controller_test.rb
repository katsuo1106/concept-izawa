require 'test_helper'

class WiresControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get wires_index_url
    assert_response :success
  end
end
