class CreateDealings < ActiveRecord::Migration[7.0]
  def change
    create_table :dealings do |t|
      t.references :author, foreign_key: { to_table: :users }, index: true
      t.string :name
      t.integer :amount, default: 0

      t.timestamps
    end
  end
end
