class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls do |t|
      t.text :original_url
      t.string :short_url
      t.integer :status ,default: true

      t.timestamps
    end
  end
end
