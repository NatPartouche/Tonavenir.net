class PacksController < ApplicationController
  # GET /packs
  # GET /packs.json
  def index
    @packs = Pack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @packs }
    end
  end

  # GET /packs/1
  # GET /packs/1.json
  def show
    @pack = Pack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pack }
    end
  end

  # GET /packs/new
  # GET /packs/new.json
  def new
    @pack = Pack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pack }
    end
  end

  # GET /packs/1/edit
  def edit
    @pack = Pack.find(params[:id])
  end

  # POST /packs
  # POST /packs.json
  def create
    @pack = Pack.new(params[:pack])

    respond_to do |format|
      if @pack.save
        format.html { redirect_to @pack, notice: 'Pack was successfully created.' }
        format.json { render json: @pack, status: :created, location: @pack }
      else
        format.html { render action: "new" }
        format.json { render json: @pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /packs/1
  # PUT /packs/1.json
  def update
    @pack = Pack.find(params[:id])

    respond_to do |format|
      if @pack.update_attributes(params[:pack])
        format.html { redirect_to @pack, notice: 'Pack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packs/1
  # DELETE /packs/1.json
  def destroy
    @pack = Pack.find(params[:id])
    @pack.destroy

    respond_to do |format|
      format.html { redirect_to packs_url }
      format.json { head :no_content }
    end
  end
end
