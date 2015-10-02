require "cuba"
require "cuba/safe"
require "cuba/render"
require "tilt/haml"

Cuba.use Rack::Session::Cookie, :secret => "7130a7b2da3b981f10e92524a95d988773eb52d623e56381fb31b48e11182450"
Cuba.plugin Cuba::Render
Cuba.settings[:render][:template_engine] = "haml"

Cuba.define do
  on get do
    on root do
      render 'hello'
    end
  end
end

