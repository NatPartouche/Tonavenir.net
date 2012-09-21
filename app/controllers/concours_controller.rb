class ConcoursController < ApplicationController
  # GET /concours
  # GET /concours.json
  def index
    @concours = Concour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @concours }
    end
  end

  # GET /concours/1
  # GET /concours/1.json
  def show
    @concour = Concour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @concour }
    end
  end

  # GET /concours/new
  # GET /concours/new.json
  def new
    @concour = Concour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @concour }
    end
  end

  # GET /concours/1/edit
  def edit
    @concour = Concour.find(params[:id])
  end

  # POST /concours
  # POST /concours.json
  def create
    @concour = Concour.new(params[:concour])

    respond_to do |format|
      if @concour.save
        format.html { redirect_to @concour, notice: 'Concour was successfully created.' }
        format.json { render json: @concour, status: :created, location: @concour }
      else
        format.html { render action: "new" }
        format.json { render json: @concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /concours/1
  # PUT /concours/1.json
  def update
    @concour = Concour.find(params[:id])

    respond_to do |format|
      if @concour.update_attributes(params[:concour])
        format.html { redirect_to @concour, notice: 'Concour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concours/1
  # DELETE /concours/1.json
  def destroy
    @concour = Concour.find(params[:id])
    @concour.destroy

    respond_to do |format|
      format.html { redirect_to concours_url }
      format.json { head :no_content }
    end
  end
end
