module AirtableRecordServices

  class Persister

    def initialize(record)
      @record = record 
      @existing = AirtableRecord.find_or_initialize_by(identifier:@record.id) 
    end

    def parent_constant
      Object.const_get model_class
    end

    def model_class 
      @record.class.to_s
    end

    def persist
      @existing.base_key = parent_constant.base_key
      @existing.table_name = parent_constant.table_name
      @existing.model_class = model_class
      @existing.raw_info = @record.fields
      @existing.save
    end
   
  end

end