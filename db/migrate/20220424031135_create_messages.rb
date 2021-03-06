class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :user, null: false, foreign_key: { to_table: "users" }

      t.timestamps
    end
  end
end
