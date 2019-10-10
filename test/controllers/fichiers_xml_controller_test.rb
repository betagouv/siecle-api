require 'test_helper'

class FichiersXmlControllerTest < ActionDispatch::IntegrationTest
  test "should create fichier_xml" do
    fichier = fixture_file_upload("files/nomenclature_simple.xml")
    assert_difference('FichierXml.count') do
      post fichiers_xml_url,
        params: { fichier: fichier },
        headers: { 'content-type': 'multipart/form-data' }
    end

    assert_response 201
    assert_match "0123456S", FichierXml.last.contenu
  end
end
