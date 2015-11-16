class MapsController < ApplicationController
  def index
	@map = GMaps.new(div: '#map', lat: 15.5, lng: -88.0333)
	@map.addMarker(lat: 15.5,
               lng: -88.0333,
               title: 'SPS',
               click: GMaps::JS["function(e) { alert('You clicked in this marker'); }"])
  end
end
