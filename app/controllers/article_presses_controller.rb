class ArticlePressesController < ApplicationController
  # GET /article_presses
  # GET /article_presses.json
  def index
    @article_presses = ArticlePress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @article_presses }
    end
  end

  # GET /article_presses/1
  # GET /article_presses/1.json
  def show
    @article_press = ArticlePress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article_press }
    end
  end

  # GET /article_presses/new
  # GET /article_presses/new.json
  def new
    @article_press = ArticlePress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article_press }
    end
  end

  # GET /article_presses/1/edit
  def edit
    @article_press = ArticlePress.find(params[:id])
  end

  # POST /article_presses
  # POST /article_presses.json
  def create
    @article_press = ArticlePress.new(params[:article_press])

    respond_to do |format|
      if @article_press.save
        format.html { redirect_to @article_press, notice: 'Article press was successfully created.' }
        format.json { render json: @article_press, status: :created, location: @article_press }
      else
        format.html { render action: "new" }
        format.json { render json: @article_press.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /article_presses/1
  # PUT /article_presses/1.json
  def update
    @article_press = ArticlePress.find(params[:id])

    respond_to do |format|
      if @article_press.update_attributes(params[:article_press])
        format.html { redirect_to @article_press, notice: 'Article press was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article_press.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_presses/1
  # DELETE /article_presses/1.json
  def destroy
    @article_press = ArticlePress.find(params[:id])
    @article_press.destroy

    respond_to do |format|
      format.html { redirect_to article_presses_url }
      format.json { head :no_content }
    end
  end
end
