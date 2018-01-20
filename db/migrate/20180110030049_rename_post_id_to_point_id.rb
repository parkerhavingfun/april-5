class RenamePostIdToPointId < ActiveRecord::Migration
  def change
    rename_column :claps, :post_id, :point_id
  end
end
