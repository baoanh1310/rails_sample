class AddDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :detail, :text
  end
end
