# frozen_string_literal: true

class ExtraitDonneesJob < ActiveJob::Base

  def perform(fichier_xml_id)
    contenu = FichierXml.find(fichier_xml_id).contenu
    etablissement = Siecle::XmlMapper.lit(contenu)
    Etablissement.create!(uai: etablissement.uai)
  end

end

