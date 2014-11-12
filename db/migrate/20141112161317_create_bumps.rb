class CreateBumps < ActiveRecord::Migration
  def change
    create_table :bumps do |t|
      t.references :user
      t.string :contact
      t.datetime :time

      t.timestamps
    end
    add_index :bumps, :user_id
  end
end
