class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.references :post, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
