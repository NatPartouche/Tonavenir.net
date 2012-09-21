class PrepaconcoursecolesController < ApplicationController
  # GET /prepaconcoursecoles
  # GET /prepaconcoursecoles.json
  def index
    @prepaconcoursecoles = Prepaconcoursecole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prepaconcoursecoles }
    end
  end

  # GET /prepaconcoursecoles/1
  # GET /prepaconcoursecoles/1.json
  def show
    @prepaconcoursecole = Prepaconcoursecole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prepaconcoursecole }
    end
  end

  # GET /prepaconcoursecoles/new
  # GET /prepaconcoursecoles/new.json
  def new
    @prepaconcoursecole = Prepaconcoursecole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prepaconcoursecole }
    end
  end

  # GET /prepaconcoursecoles/1/edit
  def edit
    @prepaconcoursecole = Prepaconcoursecole.find(params[:id])
  end

  # POST /prepaconcoursecoles
  # POST /prepaconcoursecoles.json
  def create
    @prepaconcoursecole = Prepaconcoursecole.new(params[:prepaconcoursecole])

    respond_to do |format|
      if @prepaconcoursecole.save
        format.html { redirect_to @prepaconcoursecole, notice: 'Prepaconcoursecole was successfully created.' }
        format.json { render json: @prepaconcoursecole, status: :created, location: @prepaconcoursecole }
      else
        format.html { render action: "new" }
        format.json { render json: @prepaconcoursecole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prepaconcoursecoles/1
  # PUT /prepaconcoursecoles/1.json
  def update
    @prepaconcoursecole = Prepaconcoursecole.find(params[:id])

    respond_to do |format|
      if @prepaconcoursecole.update_attributes(params[:prepaconcoursecole])
        format.html { redirect_to @prepaconcoursecole, notice: 'Prepaconcoursecole was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prepaconcoursecole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prepaconcoursecoles/1
  # DELETE /prepaconcoursecoles/1.json
  def destroy
    @prepaconcoursecole = Prepaconcoursecole.find(params[:id])
    @prepaconcoursecole.destroy

    respond_to do |format|
      format.html { redirect_to prepaconcoursecoles_url }
      format.json { head :no_content }
    end
  end
end
