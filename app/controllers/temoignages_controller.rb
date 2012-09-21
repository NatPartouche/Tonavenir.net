class TemoignagesController < ApplicationController
  # GET /temoignages
  # GET /temoignages.json
  def index
    @temoignages = Temoignage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temoignages }
    end
  end

  # GET /temoignages/1
  # GET /temoignages/1.json
  def show
    @temoignage = Temoignage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temoignage }
    end
  end

  # GET /temoignages/new
  # GET /temoignages/new.json
  def new
    @temoignage = Temoignage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temoignage }
    end
  end

  # GET /temoignages/1/edit
  def edit
    @temoignage = Temoignage.find(params[:id])
  end

  # POST /temoignages
  # POST /temoignages.json
  def create
    @temoignage = Temoignage.new(params[:temoignage])

    respond_to do |format|
      if @temoignage.save
        format.html { redirect_to @temoignage, notice: 'Temoignage was successfully created.' }
        format.json { render json: @temoignage, status: :created, location: @temoignage }
      else
        format.html { render action: "new" }
        format.json { render json: @temoignage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temoignages/1
  # PUT /temoignages/1.json
  def update
    @temoignage = Temoignage.find(params[:id])

    respond_to do |format|
      if @temoignage.update_attributes(params[:temoignage])
        format.html { redirect_to @temoignage, notice: 'Temoignage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @temoignage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temoignages/1
  # DELETE /temoignages/1.json
  def destroy
    @temoignage = Temoignage.find(params[:id])
    @temoignage.destroy

    respond_to do |format|
      format.html { redirect_to temoignages_url }
      format.json { head :no_content }
    end
  end
end
