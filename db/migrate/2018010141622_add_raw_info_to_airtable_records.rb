class AddRawInfoToAirtableRecords < ActiveRecord::Migration
  def change
    add_column :airtable_records, :raw_info, :jsonb, null: false, default: '{}'
  end
end