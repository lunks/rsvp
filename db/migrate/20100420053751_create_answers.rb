class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :name
      t.string :email
      t.boolean :invite
      t.integer :guests
      t.timestamps
    end
  end
  
  def self.down
    drop_table :answers
  end
end
