require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application

# ApplicationController runs every time we make a request
run ApplicationController
# the "use" statements below allow the system to recognize the routes in each of the controllers below

use RestaurantsController
use GuestsController
use ReservationsController
