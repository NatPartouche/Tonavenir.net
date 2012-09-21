class FranchiseTonAvenirController < ApplicationController
  def index
    @franchises = Franchise.all
  end
end
