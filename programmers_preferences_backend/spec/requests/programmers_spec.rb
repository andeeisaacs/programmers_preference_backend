require 'rails_helper'

describe "Programmers API", type: :request do
  it "gets a list of Programmers" do
    # Create a new cat in the Test Database (not the same one as development)
    Programmer.create(name: 'Felix', age: 2, enjoys: 'Walks in the park')

    # Make a request to the API
    get '/programmers'

    # Convert the response into a Ruby Hash
    json = JSON.parse(response.body)

    # Assure that we got a successful response
    expect(response).to have_http_status(:ok)

    # Assure that we got one result back as expected
    expect(json.length).to eq 1
  end
end