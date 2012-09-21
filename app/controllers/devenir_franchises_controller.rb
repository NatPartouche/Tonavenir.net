class DevenirFranchisesController < ApplicationController
  # GET /devenir_franchises
  # GET /devenir_franchises.json
  def index
    @devenir_franchises = DevenirFranchise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devenir_franchises }
    end
  end

  # GET /devenir_franchises/1
  # GET /devenir_franchises/1.json
  def show
    @devenir_franchise = DevenirFranchise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @devenir_franchise }
    end
  end

  # GET /devenir_franchises/new
  # GET /devenir_franchises/new.json
  def new
    @devenir_franchise = DevenirFranchise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @devenir_franchise }
    end
  end

  # GET /devenir_franchises/1/edit
  def edit
    @devenir_franchise = DevenirFranchise.find(params[:id])
  end

  # POST /devenir_franchises
  # POST /devenir_franchises.json
  def create
    @devenir_franchise = DevenirFranchise.new(params[:devenir_franchise])

    respond_to do |format|
      if @devenir_franchise.save
        format.html { redirect_to @devenir_franchise, notice: 'Devenir franchise was successfully created.' }
        format.json { render json: @devenir_franchise, status: :created, location: @devenir_franchise }
      else
        format.html { render action: "new" }
        format.json { render json: @devenir_franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /devenir_franchises/1
  # PUT /devenir_franchises/1.json
  def update
    @devenir_franchise = DevenirFranchise.find(params[:id])

    respond_to do |format|
      if @devenir_franchise.update_attributes(params[:devenir_franchise])
        format.html { redirect_to @devenir_franchise, notice: 'Devenir franchise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @devenir_franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devenir_franchises/1
  # DELETE /devenir_franchises/1.json
  def destroy
    @devenir_franchise = DevenirFranchise.find(params[:id])
    @devenir_franchise.destroy

    respond_to do |format|
      format.html { redirect_to devenir_franchises_url }
      format.json { head :no_content }
    end
  end
end
