class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :theme
      t.datetime :startdate
      t.datetime :enddate
      t.text :description

      t.timestamps
    end
  end
end
