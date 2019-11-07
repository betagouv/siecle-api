require 'test_helper'

class EtablissementsControllerTest < ActionDispatch::IntegrationTest

  test "should show etablissements' list" do
    get "/etablissements"

    assert_response 200
    assert_match etablissements(:malraux).uai, response.body
    assert_match etablissements(:test).uai, response.body
  end
end
