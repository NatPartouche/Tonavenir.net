class AddAttachmentPhotoToFranchises < ActiveRecord::Migration
  def self.up
    change_table :franchises do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :franchises, :photo
  end
end
