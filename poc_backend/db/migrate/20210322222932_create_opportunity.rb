class CreateOpportunity < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.string :account_name
      t.string :account_executive
      t.string :business_type
      t.integer :network_id
      t.string :url
      t.string :tag_implementation_method
      t.boolean :noJS
      t.integer :average_daily_clicks
    end
  end
end
