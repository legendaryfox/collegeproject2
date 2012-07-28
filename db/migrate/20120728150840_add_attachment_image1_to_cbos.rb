class AddAttachmentImage1ToCbos < ActiveRecord::Migration
  def self.up
    add_column :cbos, :image1_file_name, :string
    add_column :cbos, :image1_content_type, :string
    add_column :cbos, :image1_file_size, :integer
    add_column :cbos, :image1_updated_at, :datetime
  end

  def self.down
    remove_column :cbos, :image1_file_name
    remove_column :cbos, :image1_content_type
    remove_column :cbos, :image1_file_size
    remove_column :cbos, :image1_updated_at
  end
end
