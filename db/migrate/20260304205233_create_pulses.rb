class CreatePulses < ActiveRecord::Migration[8.1]
  def change
    create_table :pulses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :url
      t.integer :pulse_internal
      t.integer :pulse_type
      t.boolean :status_page

      t.timestamps
    end
  end
end
