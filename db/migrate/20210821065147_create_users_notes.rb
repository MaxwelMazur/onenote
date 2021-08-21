class CreateUsersNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :users_notes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
