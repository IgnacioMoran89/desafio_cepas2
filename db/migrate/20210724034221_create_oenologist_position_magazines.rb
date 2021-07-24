class CreateOenologistPositionMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologist_position_magazines do |t|
      t.references :position, foreign_key: true
      t.references :oenologist, foreign_key: true
      t.references :magazine, foreign_key: true

      t.timestamps
    end
  end
end
