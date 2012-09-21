class Franchise < ActiveRecord::Base
  attr_accessible :adresse, :description, :mail, :nom, :prenom, :telefix, :telmob,:photo
  has_attached_file :photo
  
end
