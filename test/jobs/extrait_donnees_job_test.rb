# frozen_string_literal: true

require "test_helper"

class ExtraitDonneesJobTest < ActionDispatch::IntegrationTest

  test "extrait uai d'un fichier nomenclature" do
    assert_difference 'Etablissement.count' do
      ExtraitDonneesJob.new.perform(fichiers_xml(:nomenclature_uaj).id)
      refute_nil Etablissement.find_by(uai: '0123456S')
    end
  end

end

