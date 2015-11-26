class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.date :birthDate
      t.string :role

      t.timestamps null: false
    end
  end
end
