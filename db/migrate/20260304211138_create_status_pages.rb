class CreateStatusPages < ActiveRecord::Migration[8.1]
  def change
    create_table :status_pages do |t|
      t.references :pulse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
