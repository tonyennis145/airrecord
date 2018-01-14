class AddAttributesToAirtableRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :airtable_records, :raw_info, :jsonb, null: false, default: '{}'
  end
end