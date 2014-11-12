class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :razer_id
      t.integer :steam_id

      t.timestamps
    end
  end
end
