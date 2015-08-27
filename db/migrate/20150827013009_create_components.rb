class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.string :category
      t.text :description
      t.text :sample_input
      t.text :sample_output
      t.string :sample_curl_command
      t.string :ws_url
      t.string :sc_url
      t.string :home_url
      t.references :user

      t.timestamps
    end
    add_index :components, :user_id
  end
end
