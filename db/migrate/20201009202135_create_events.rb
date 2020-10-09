class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :time
      t.string :date
      t.string :sport
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
