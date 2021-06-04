require 'rails_helper'

RSpec.describe Foursquare::CheckIn do
  let(:check_in_attributes) { JSON.parse(File.read('spec/fixtures/foursquare/check_in.json')) }

  it 'pulls relevant information from the Foursquare API' do
    check_in = Foursquare::CheckIn.new(check_in_attributes)

    expect(check_in.id).to eq("606ddf9f3507ba5fc1d40658")
    expect(check_in.message).to eq("💉")
    expect(check_in.venue).to eq("Covid-19 Vaccination Center")
    expect(check_in.event).to be_nil
    expect(check_in.category_id).to eq("4bf58dd8d48988d104941735")
    expect(check_in.address).to eq("Portland, OR 97232")
    expect(check_in.coordinates).to eq([45.529565, -122.662628])
    expect(check_in).not_to be_mayor
  end
end
