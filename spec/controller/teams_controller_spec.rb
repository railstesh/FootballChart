require 'rails_helper'

RSpec.describe TeamsController, type: :controller do
  
  # Routes
  describe 'Routes' do
    it { expect(get: '/teams').to route_to({ controller: 'teams', action: 'index' }) }
    it { expect(get: '/raw_teams_data').to route_to({ controller: 'teams', action: 'raw_teams_data' }) }
  end
  
  describe 'List all Teams' do
    describe "#index", search: true do
      it 'List all Teams ' do
        get :index
        expect(response.status).to be 200
      end
    end
	end
	
	describe 'List all Teams as raw data' do
    describe "#raw_teams_data", search: true do
      it 'List all Teams as raw ' do
        get :raw_teams_data
        expect(response.status).to be 200
      end
    end
  end

end
