class CreateBatches < ActiveRecord::Migration
  def self.up
    create_table :batches do |t|
      t.string :name
      t.integer :user_id
      t.integer :style_id
      t.date :brew_date
      t.date :rack_date
      t.date :bottle_date
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :batches
  end
end
