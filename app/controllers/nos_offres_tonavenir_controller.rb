class NosOffresTonavenirController < ApplicationController
  def index
    @packs = Pack.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @packs }
      end
  end
end
