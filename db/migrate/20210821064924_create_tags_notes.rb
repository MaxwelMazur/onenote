class CreateTagsNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :tags_notes do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
