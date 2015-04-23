class CreateVotePics < ActiveRecord::Migration
  def change
    create_table :vote_pics do |t|
      t.string :src

      t.timestamps null: false
    end
  end
end
