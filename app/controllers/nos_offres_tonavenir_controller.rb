class NosOffresTonavenirController < ApplicationController
  def index
    @packs = Pack.all
    
  end
end
