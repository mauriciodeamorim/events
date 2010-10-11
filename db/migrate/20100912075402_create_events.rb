class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :local_event
      t.string :url
      t.date :date_event
      t.string :description
      t.boolean :available

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
