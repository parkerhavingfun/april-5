class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.text :title
      t.text :topic
      t.text :body

      t.timestamps null: false
    end
  end
end
