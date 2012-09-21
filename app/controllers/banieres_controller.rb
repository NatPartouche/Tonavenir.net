class BanieresController < ApplicationController
  # GET /banieres
  # GET /banieres.json
  def index
    @banieres = Baniere.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banieres }
    end
  end

  # GET /banieres/1
  # GET /banieres/1.json
  def show
    @baniere = Baniere.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baniere }
    end
  end

  # GET /banieres/new
  # GET /banieres/new.json
  def new
    @baniere = Baniere.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baniere }
    end
  end

  # GET /banieres/1/edit
  def edit
    @baniere = Baniere.find(params[:id])
  end

  # POST /banieres
  # POST /banieres.json
  def create
    @baniere = Baniere.new(params[:baniere])

    respond_to do |format|
      if @baniere.save
        format.html { redirect_to @baniere, notice: 'Baniere was successfully created.' }
        format.json { render json: @baniere, status: :created, location: @baniere }
      else
        format.html { render action: "new" }
        format.json { render json: @baniere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /banieres/1
  # PUT /banieres/1.json
  def update
    @baniere = Baniere.find(params[:id])

    respond_to do |format|
      if @baniere.update_attributes(params[:baniere])
        format.html { redirect_to @baniere, notice: 'Baniere was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baniere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banieres/1
  # DELETE /banieres/1.json
  def destroy
    @baniere = Baniere.find(params[:id])
    @baniere.destroy

    respond_to do |format|
      format.html { redirect_to banieres_url }
      format.json { head :no_content }
    end
  end
end
