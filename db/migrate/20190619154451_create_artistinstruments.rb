class CreateArtistinstruments < ActiveRecord::Migration
  def change
    create_table :artistinstruments do |t|
      t.integer :artist_id
      t.integer :instrument_id
    end
    
  end
end
