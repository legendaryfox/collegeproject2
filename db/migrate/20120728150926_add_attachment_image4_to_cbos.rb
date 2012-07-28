class AddAttachmentImage4ToCbos < ActiveRecord::Migration
  def self.up
    add_column :cbos, :image4_file_name, :string
    add_column :cbos, :image4_content_type, :string
    add_column :cbos, :image4_file_size, :integer
    add_column :cbos, :image4_updated_at, :datetime
  end

  def self.down
    remove_column :cbos, :image4_file_name
    remove_column :cbos, :image4_content_type
    remove_column :cbos, :image4_file_size
    remove_column :cbos, :image4_updated_at
  end
end
