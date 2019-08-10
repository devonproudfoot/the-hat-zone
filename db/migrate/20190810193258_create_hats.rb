class CreateHats < ActiveRecord::Migration[5.2]
  def change
    create_table :hats do |t|
      t.string :name
      t.string :brand
      t.string :color
      t.string :style
      t.string :team
      t.timestamps
    end
  end
end
