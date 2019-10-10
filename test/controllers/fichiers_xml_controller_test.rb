require 'test_helper'

class FichiersXmlControllerTest < ActionDispatch::IntegrationTest
  include ::ActiveJob::TestHelper

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

  test "place en file d'attente un job" do
    fichier = fixture_file_upload("files/nomenclature_simple.xml")
    assert_enqueued_with(job: ExtraitDonneesJob) do
      post fichiers_xml_url,
        params: { fichier: fichier },
        headers: { 'content-type': 'multipart/form-data' }
    end
  end
end
