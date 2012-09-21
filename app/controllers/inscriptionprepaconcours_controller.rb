class InscriptionprepaconcoursController < ApplicationController
  # GET /inscriptionprepaconcours
  # GET /inscriptionprepaconcours.json
  def index
    @inscriptionprepaconcours = Inscriptionprepaconcour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inscriptionprepaconcours }
    end
  end

  # GET /inscriptionprepaconcours/1
  # GET /inscriptionprepaconcours/1.json
  def show
    @inscriptionprepaconcour = Inscriptionprepaconcour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inscriptionprepaconcour }
    end
  end

  # GET /inscriptionprepaconcours/new
  # GET /inscriptionprepaconcours/new.json
  def new
    @inscriptionprepaconcour = Inscriptionprepaconcour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inscriptionprepaconcour }
    end
  end

  # GET /inscriptionprepaconcours/1/edit
  def edit
    @inscriptionprepaconcour = Inscriptionprepaconcour.find(params[:id])
  end

  # POST /inscriptionprepaconcours
  # POST /inscriptionprepaconcours.json
  def create
    @inscriptionprepaconcour = Inscriptionprepaconcour.new(params[:inscriptionprepaconcour])

    respond_to do |format|
      if @inscriptionprepaconcour.save
        format.html { redirect_to @inscriptionprepaconcour, notice: 'Inscriptionprepaconcour was successfully created.' }
        format.json { render json: @inscriptionprepaconcour, status: :created, location: @inscriptionprepaconcour }
      else
        format.html { render action: "new" }
        format.json { render json: @inscriptionprepaconcour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inscriptionprepaconcours/1
  # PUT /inscriptionprepaconcours/1.json
  def update
    @inscriptionprepaconcour = Inscriptionprepaconcour.find(params[:id])

    respond_to do |format|
      if @inscriptionprepaconcour.update_attributes(params[:inscriptionprepaconcour])
        format.html { redirect_to @inscriptionprepaconcour, notice: 'Inscriptionprepaconcour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inscriptionprepaconcour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscriptionprepaconcours/1
  # DELETE /inscriptionprepaconcours/1.json
  def destroy
    @inscriptionprepaconcour = Inscriptionprepaconcour.find(params[:id])
    @inscriptionprepaconcour.destroy

    respond_to do |format|
      format.html { redirect_to inscriptionprepaconcours_url }
      format.json { head :no_content }
    end
  end
end
