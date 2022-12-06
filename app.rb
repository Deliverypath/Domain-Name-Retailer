class DomainsForYou < Sinatra::Base
  get '/' do
    @domain = request.env['HTTP_REFERRER']
    @price = DOMAINS[@domain]

    if @price
      erb :index
    else
      erb :not_found
    end
  end
end
