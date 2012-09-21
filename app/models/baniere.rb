class Baniere < ActiveRecord::Base
  attr_accessible :description, :titre, :photo
  has_attached_file :photo
end
