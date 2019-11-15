require "bikes"

describe Bike do

  describe "#working?" do
    it "responds to 'working?' method" do
      expect(subject).respond_to? (:working?)
    end
  end

  describe "#broken" do
    it "returns true if method called" do
      expect(subject.broken).to eq true
    end
  end
end
