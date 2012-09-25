class EspaceTemoignageTonavenirController < ApplicationController
  def index
     @temoignages = Temoignage.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @temoignages }
      end
  end
end
