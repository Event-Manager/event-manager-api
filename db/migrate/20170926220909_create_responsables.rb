class CreateResponsables < ActiveRecord::Migration[5.1]
  def change
    create_table :responsables do |t|
      t.string :name, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
