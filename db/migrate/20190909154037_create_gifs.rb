class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
