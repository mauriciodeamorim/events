class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :localization
      t.string :url
      t.date :date
      t.text :description
      t.boolean :available

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
