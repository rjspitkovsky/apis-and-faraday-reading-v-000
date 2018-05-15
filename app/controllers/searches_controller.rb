class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'URG1B1WIMPZVG1VVSTZZFNZYCMMNK2ARTY01DCYFZK1SPVLH'
      req.params['client_secret'] = '1IKOFIKY0LCO4DGJCRF4JNHODZ0GPOYA3YKN2CFMGNZFTJTD'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
