class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :url_id
      t.string :ip_address
      t.string :region
      t.string :country

      t.timestamps
    end
  end
end
