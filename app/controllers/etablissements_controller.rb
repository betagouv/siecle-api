class EtablissementsController < ApplicationController

  def index
    render json: Etablissement.all
  end
end
