class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.boolean :show_active
      t.integer :order_title
      t.date :show_order_then

      t.timestamps null: false
    end

  end
end
