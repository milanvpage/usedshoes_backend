# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

 Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
     origins '*' # for whatver website your grabbing from # once you deploy this you'll have an ectual website here 
     #we don't have a URL yet, everything can access right now because we're still going through development
    #since we're just in our local environment theonly thing that can access this anways is will be on our local computer, so it's totally fine that evrything can access it right now
    #can  be speciifc on what pages it goes through and what headers you want to use.
    #have to install the gem that goes with it aswell
     resource '*',
       headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
   end
 end

 #security feature make sure the no external sources are trying to acces your API that you're not controlling

 #cors is a middleWare
