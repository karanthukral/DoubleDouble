class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.belongs_to :user
    	t.string :name
    	t.string :size
    	t.string :location
    	t.timestamps null: false
    end
    add_index :drinks, :user_id
  end
end
