require 'rails_helper'

RSpec.describe Foursquare::User do
  let(:user_attributes) { JSON.parse(File.read('spec/fixtures/foursquare/user.json')) }

  it 'pulls relevant information from the Foursquare API' do
    user = Foursquare::User.new(user_attributes)

    expect(user.id).to eq("8302351")
    expect(user.name).to eq("David Celis")
    expect(user.email).to eq("me@davidcel.is")
  end
end
