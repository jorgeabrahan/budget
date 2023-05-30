class CreateJoinTableGroupDealing < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :dealings do |t|
      t.index [:group_id, :dealing_id]
      t.index [:dealing_id, :group_id]
    end
  end
end
