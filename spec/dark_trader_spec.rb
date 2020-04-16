require_relative '../lib/dark_trader'

describe "the dark_method" do
	it "should return an array of cryptocurrencies and value" do
		expect(dark_method.class).to eq(Array)
	end
end