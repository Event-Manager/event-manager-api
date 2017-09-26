class CreateEventRequestStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :event_request_statuses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
