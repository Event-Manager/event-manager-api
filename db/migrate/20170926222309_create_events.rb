class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :event_request, foreign_key: true
      t.references :supplier, foreign_key: true
      t.float :cost

      t.timestamps
    end
  end
end
