class CreateEventRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :event_requests do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.datetime :date, null: false
      t.integer :participants_number, null: false
      t.references :responsable, foreign_key: true
      t.references :office, foreign_key: true
      t.references :event_request_status, foreign_key: true
      t.references :event_type, foreign_key: true

      t.timestamps
    end
  end
end
