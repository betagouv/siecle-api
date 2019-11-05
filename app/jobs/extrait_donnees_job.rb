# frozen_string_literal: true

class ExtraitDonneesJob < ActiveJob::Base

  def perform(fichier_xml_id)
    contenu = FichierXml.find(fichier_xml_id).contenu
    document_xml = Nokogiri::XML(contenu)
    Etablissement.create!(uai: document_xml.xpath("//UAJ").text)
  end

end

