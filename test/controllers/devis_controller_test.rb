require 'test_helper'

class DevisControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get devis_new_url
    assert_response :success
  end

end
