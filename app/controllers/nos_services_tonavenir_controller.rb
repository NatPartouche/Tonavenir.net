class NosServicesTonavenirController < ApplicationController
  def index
    
    @etapes = Etape.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @etapes }
    end
    
  end
end
