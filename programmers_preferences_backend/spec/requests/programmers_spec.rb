require 'rails_helper'

describe "Programmers API", type: :request do
  it "gets a list of Programmers" do
    # Create a new programmer in the Test Database (not the same one as development)
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
  
  
    it "creates a programmer" do
    # The params we are going to send with the request
    programmer_params = {
      programmer: {
        name: 'Buster',
        age: 4,
        enjoys: 'Meow Mix, and plenty of sunshine.'
      }
    }

    # Send the request to the server
    post '/programmers', params: programmer_params

    # Assure that we get a success back
    expect(response).to have_http_status(:ok)

    # Look up the programmer we expect to be created in the Database
    new_programmer = Programmer.first

    # Assure that the created programmer has the correct attributes
    expect(new_programmer.name).to eq('Buster')
  end
  
end