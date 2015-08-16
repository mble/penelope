require './app/app'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  Cuba
end

describe 'GET /' do
  it 'returns 200 response' do
    get '/'
    follow_redirect!
    expect(last_response.status).to eql 200
  end
end
