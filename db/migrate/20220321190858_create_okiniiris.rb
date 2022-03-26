class CreateOkiniiris < ActiveRecord::Migration[6.1]
  def change
    create_table :okiniiris do |t|
      t.references :user, null: false, foreign_key: true

      t.references :micropost, null: false, foreign_key: true


      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end
