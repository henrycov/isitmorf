class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :location
      t.integer :mvote
      t.integer :fvote

      t.timestamps
    end
  end
end
