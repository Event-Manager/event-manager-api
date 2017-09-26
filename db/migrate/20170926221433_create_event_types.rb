class CreateEventTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :event_types do |t|
      t.string :name, null: false
      t.boolean :enabled, null: false, default: true

      t.timestamps
    end
  end
end
