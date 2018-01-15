namespace :airrecord do

  task persist_all: :environment do
    Rails.application.eager_load!
    Airrecord::Table.descendants.each do |airrecord_table|
      puts "Syncing #{airrecord_table}s"
      airrecord_table.all.each do |record|
        puts "Syncing record id: #{record.id}"
        AirtableRecordServices::Persister.new(record).persist
      end
    end
  end

end