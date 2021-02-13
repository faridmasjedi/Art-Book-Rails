class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.text :form
      t.text :name
      t.text :artist
      t.integer :year
      t.text :image

      t.timestamps
    end
  end
end
