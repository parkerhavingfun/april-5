class CreateClaps < ActiveRecord::Migration
  def change
    create_table :claps do |t|
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
