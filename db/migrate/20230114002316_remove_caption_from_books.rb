class RemoveCaptionFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :caption, :string
    remove_column :books, :text
  end
end
