class AddHouseRoomDevice < ActiveRecord::Migration[5.1]
  def change
  	create_table :houses do |t|
  		t.string :name

  		t.timestamps
  	end

  	create_table :rooms do |t|
  		t.string :name, :coordinates
  		t.belongs_to :house

  		t.timestamps
  	end

  	create_table :devices do |t|
  		t.string :name, :type, :external_id, :coordinates
  		t.belongs_to :room

  		t.timestamps
  	end
  end
end
