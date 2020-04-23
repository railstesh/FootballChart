require 'rails_helper'

RSpec.describe ParseDatFileService, type: :service do
  let(:filepath) { 'public/football.dat' }

  describe "#Parse data from file" do
    it "Parse Data" do
      object = ParseDatFileService.new(filepath).parse { }
      expect(object.class).to eq (File)
    end
  end
end

