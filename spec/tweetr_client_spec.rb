require 'tweeter_client'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/vcr_cassettes"
  config.hook_into :webmock
end

RSpec.describe TweeterClient do
  it 'creates and fetches a poster' do
    poster = TweeterClient::Poster.create(name: 'Maguro')
    expect(poster.name).to eq('Maguro')

#    poster2 = TweeterClient::Poster.fetch poster.id
#    expect(poster2.name).to eq('Maguro')
  end

  xit 'updates a poster' do
  end
  
  xit 'deletes a poster' do
  end

  context 'given a poster' do
    xit 'tweets...' do
    end
  end
end
