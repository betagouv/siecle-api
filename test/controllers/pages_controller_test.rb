require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "la page de bienvenue expose les urls disponibles" do
    get root_path
    assert_response :success
    assert_equal [], assigns(:urls)
  end
end
