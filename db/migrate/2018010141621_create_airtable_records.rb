class CreateAirtableRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :airtable_records do |t|
      t.string :identifier
      t.string :base_key
      t.string :table_name
      t.string :model_class

      t.timestamps
    end
  end
end