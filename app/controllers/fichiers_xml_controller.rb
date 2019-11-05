class FichiersXmlController < ApplicationController

  # POST /fichiers_xml
  def create
    contenu = File.read(params[:fichier], :encoding => 'iso-8859-15')
    @fichier_xml = FichierXml.new(contenu: contenu)

    if @fichier_xml.save
      ExtraitDonneesJob.perform_later(@fichier_xml.id)
      render json: @fichier_xml, status: :created
    else
      render json: @fichier_xml.errors, status: :unprocessable_entity
    end
  end
end
