class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.belongs_to :article, index: true, foreign_key: true
      t.string :name
      t.string :url
      t.boolean :active

      t.timestamps null: false
    end
  end
end
