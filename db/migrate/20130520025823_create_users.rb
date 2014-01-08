class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid, limit: 8, index: true, unique: true
      t.string :username, index: true, unique: true
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
