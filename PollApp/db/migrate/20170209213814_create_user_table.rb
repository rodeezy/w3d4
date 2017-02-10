class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :user_tables do |t|
      t.string :user_name, null: false

      t.timestamps
    end
    add_index :user_tables, :user_name, unique: true
  end
end
