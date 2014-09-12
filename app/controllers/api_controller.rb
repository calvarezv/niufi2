class ApiController < ApplicationController

	require 'rubygems'
	require 'json'

	SECRET = 'elmediosecreto'
	VALIDATOR = '623d3e898319f40b138a27a6d7db411f9c78d286'

	def test
		@events = Array.new 
		if request.get?
			# render :text => VALIDATOR
			return VALIDATOR
		elsif request.post?
			map = JSON.parse(params[:data])
			if map['secret'] != SECRET
				logger.warn "got post with bad secret: #{SECRET}"
				@events << "got post with bad secret: #{SECRET}"
			else
				map['probing'].each do |c|
					logger.info "client #{c['client_mac']} seen on ap #{c['ap_mac']} with rssi #{c['rssi']} at #{c['last_seen']}"
					@events << "client #{c['client_mac']} seen on ap #{c['ap_mac']} with rssi #{c['rssi']} at #{c['last_seen']}"
				end
			end
		end

	end

	def receiveEvents
		render :text => "jojo"
	end

end
