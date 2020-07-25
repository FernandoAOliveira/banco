class CreateStatements < ActiveRecord::Migration[6.0]
  def change
    create_table :statements do |t|
      t.float :balance
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
