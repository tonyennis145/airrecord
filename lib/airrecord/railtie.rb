module Airrecord
  class Railtie < Rails::Railtie
  	rake_tasks do
      load 'tasks/airrecord.rake'
    end
  end
end