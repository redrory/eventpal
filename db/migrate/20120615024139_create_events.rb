class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :time
      t.string :location

      t.timestamps
    end
  end
end
