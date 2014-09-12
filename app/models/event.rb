class Event < ActiveRecord::Base
	validates_presence_of :ap_mac, :client_mac, :rssi, :last_seen

	require 'json'

	def self.parse_event(probe)
		Event.create(:ap_mac=>probe['ap_mac'],
			:client_mac=>probe['client_mac'],
			:rssi=>probe['rssi'].to_i,
			:rssi_db=>probe['rssi'].to_i - 95,
			:last_seen=>probe['last_seen'],
			:is_associated=>(probe['is_associated'] == 'true'))

	end

end
