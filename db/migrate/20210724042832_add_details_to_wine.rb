class AddDetailsToWine < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :grade, :integer
  end
end
