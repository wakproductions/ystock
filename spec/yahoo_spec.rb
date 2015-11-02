require 'pry'

# => Yahoo Tests
require 'spec_helper'
require "./lib/ystock/ystock.rb"
describe Ystock do
	context "service response" do
		it "should retrieve stock symbol" do
			stock = Ystock.quote("AAPL")
			expect(stock[:symbol]).to include("AAPL")
		end
		it "should retrieve stock symbol for first stock using the default parameters" do
			stock = Ystock.quote(["GOOG", "AAPL"])
      quote = stock[0]
			expect(quote[:symbol]).to include("GOOG")
      expect(quote[:price]).to match(/\d*\.\d*/)
      expect(quote[:change]).to match(/(\+|-)\d*\.\d*/)
      expect(quote[:volume]).to match(/\d*/)
			expect(quote[:day_high]).to match(/\d*\.\d*/)
			expect(quote[:day_low]).to match(/\d*\.\d*/)
			expect(quote[:previous_close]).to match(/\d*\.\d*/)
			expect(quote[:exchange]).to eql('NMS')
    end
    it "should retrieve data for any set of requested parameters" do
      requested_columns = YahooAPI::Quote::API_KEYS.keys
      columns_count = YahooAPI::Quote::API_KEYS.keys.count
      quote = Ystock.quote("GE", requested_columns)
      expect(quote.keys.count).to eql(columns_count)
      quote.each do |k,_v|
        expect(quote[k]).to_not be_nil
      end
    end
	end

	context "Gem version" do
		it "should not be empty" do
			gemversion = Ystock.version
			expect(gemversion).not_to be_empty
		end
	end
end
