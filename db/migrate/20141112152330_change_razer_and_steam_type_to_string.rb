class ChangeRazerAndSteamTypeToString < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.change :steam_id, :string
  		t.change :razer_id, :string
  	end
  end
end
