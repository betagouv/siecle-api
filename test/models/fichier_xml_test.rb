require 'test_helper'

class FichierXmlTest < ActiveSupport::TestCase
  test "la fixture charge bien" do
    assert_match "UAJ", fichiers_xml(:nomenclature_uaj).contenu
  end
end
