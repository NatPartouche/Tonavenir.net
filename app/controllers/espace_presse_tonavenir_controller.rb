class EspacePresseTonavenirController < ApplicationController
  def index
    @article_presses = ArticlePress.all
    
  end
end
