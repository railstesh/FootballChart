require 'rails_helper'

RSpec.describe ParseDatFileService, type: :service do
  let(:filepath) { 'public/football.dat' }

  describe "#Parse data from file" do
    it "Parse Data" do
      teams = []
      ParseDatFileService.new(filepath).parse {|team| teams << team }
      expect(teams.count).to eq (20)
      expect(teams.class).to eq (Array)
    end
  end
end

