class ArticlePress < ActiveRecord::Base
  attr_accessible :date, :description, :journal, :titre
end
