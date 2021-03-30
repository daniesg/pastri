class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :address

      t.timestamps
      t.index :user, unique: true
    end
  end
end
