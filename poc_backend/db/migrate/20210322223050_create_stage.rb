class CreateStage < ActiveRecord::Migration[6.0]
  def change
    create_table :stages do |t|
      t.string :name
    end
  end
end
