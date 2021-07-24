class CreateWinesStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :wines_strains do |t|
      t.references :wine, foreign_key: true
      t.references :strain, foreign_key: true
      t.integer :percent

      t.timestamps
    end
  end
end
