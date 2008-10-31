class PopulateCountriesAndCities < ActiveRecord::Migration
  
  def self.up
    countries = { "UK"     => %w(London Birmingham Manchester Sheffield Bristol), 
                  "USA"    => ['Washington D.C.', 'New York', 'Los Angeles', 'San Fransisco'),
                  "France" => %w(Paris Nice Marseille Lyon Toulouse)
                }
                
    countries.each_pair do |country, cities|
      c = Country.create :name => country
      cities.each { |city| c.cities.  }
    
  end

  def self.down
  end
end
