class Location < ActiveRecord::Base
  synced associations: :photos, remove: true
  has_many :photos

  def self.api
    @@api ||= BookingSync::API::Client.new("CREDENTIALS_FLOW_ACCESS_TOKEN")
  end
end
