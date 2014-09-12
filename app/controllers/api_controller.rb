class ApiController < ApplicationController

	require 'rubygems'
	require 'json'

	SECRET = 'elmediosecreto'
	VALIDATOR = '623d3e898319f40b138a27a6d7db411f9c78d286'

	def testConnection
		@validator = VALIDATOR
		render :text => VALIDATOR
	end

	def receiveEvents
		map = JSON.parse(params[:data])
		if map['secret'] != SECRET
			logger.warn "Got post with bad secret: #{SECRET}"
			return ""
		end

		map['probing'].each do |c|
			e = Event.parse_event(c)
			if e.save
				logger.info "Client #{e.client_mac} seen on ap #{e.ap_mac} with rssi #{e.rssi.to_s} at #{e.last_seen}. " + (e.is_associated ? "Is associated." : "Is not associated.")
			else
				logger.error "Event can't be stored."
			end
		end
	end
	
end
