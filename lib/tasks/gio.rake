require 'csv'

namespace :gio do
  desc "Load csv data from google drive into the database"
  task load: :environment do
    CSV.foreach('lib/assets/Run.csv', :headers => true) do |row|
      Excursion.create row.to_hash
    end
  end

end
