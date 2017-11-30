class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :password_digest
      t.string :mail
      t.boolean :is_admin

      t.timestamps
    end
  end
end
