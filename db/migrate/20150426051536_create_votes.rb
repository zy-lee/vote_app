class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_pic_id
      t.string :remote_ip

      t.timestamps null: false
    end
  end
end
