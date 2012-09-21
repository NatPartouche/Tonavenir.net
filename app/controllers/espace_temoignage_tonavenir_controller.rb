class EspaceTemoignageTonavenirController < ApplicationController
  def index
    @temoignages = Temoignage.all
  
  end
end
