class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid, :limit => 8
      t.string :username
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
