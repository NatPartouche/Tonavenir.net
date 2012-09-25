class DevenirFranchiseTonavenirController < ApplicationController
  def index
    @franchises = Franchise.all
     respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @franchises }
      end
      
  end
end
