require 'json'

class Holiday
  def self.all
    holidays
  end

  def self.find(region)
    all.select { |h| h['region'] == region }.first
  end

  def self.holidays
    new.load_holidays
  end

  def load_holidays
    JSON.parse(File.read(db_file))
  end

  private

  def db_file
    './db/holidays.json'
  end
end
