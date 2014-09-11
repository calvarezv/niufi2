class ApiController < ApplicationController

	require 'rubygems'
	require 'json'

	SECRET = ''
	VALIDATOR = ''

	def test
		map = JSON.parse(params[:data])
		if map['secret'] != SECRET
			logger.warn "got post with bad secret: #{SECRET}"
			return
		end

		map['probing'].each do |c|
			logger.info "client #{c['client_mac']} seen on ap #{c['ap_mac']} with rssi #{c['rssi']} at #{c['last_seen']}"
		end
		
		render :text => 'jojo'
	end

end
