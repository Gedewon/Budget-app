require "rails_helper" 
RSpec.describe User , type: :request do 
   it 'should render splash screen in root with login & signup action' do 
    get '/'
    expect(response).to have_http_status(:ok)
    expect(response.body).to include("login")
    expect(response.body).to include("SignUp")
   end 
end 