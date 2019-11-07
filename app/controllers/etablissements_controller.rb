class EtablissementsController < ApplicationController

  def index
    render json: Etablissement.all
  end

  def show
    render json: Etablissement.find_by(uai: params[:id])
  end
end
