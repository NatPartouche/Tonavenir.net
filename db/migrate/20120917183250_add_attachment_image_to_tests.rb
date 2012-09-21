class AddAttachmentImageToTests < ActiveRecord::Migration
  def self.up
    change_table :tests do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :tests, :image
  end
end

