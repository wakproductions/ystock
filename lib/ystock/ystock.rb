require 'ystock/yahoo_api'

	class Ystock
		@@service_uri = "http://download.finance.yahoo.com/d/quotes.csv"
		@request_columns=[]

		def self.quote(stocks, columns=YahooAPI::Quote::DEFAULT_REQUEST_COLUMNS)
			@request_columns=columns
			if stocks.is_a? Array
				# => Many stocks
				format(send_request(stocks.join(",")))
			else
				# => Single Stock
				format(send_request(stocks)).first
			end
		end

		private

			def self.format(results)
				output = []

				results.each_line("\n") do |row|
					output << parse_returned_data(row)

					# stockdata = row.split(",")
					# if !stockdata.nil?
          #
					# 	# => Check to see if the Symbol is nil
					# 	if !stockdata[3].nil?
					# 		stockdata[3] = stockdata[3].gsub("\r\n", "").gsub('"', '')
          #
					# 		output << {:symbol => stockdata[3],
					# 					:price => stockdata[0],
					# 					:change => stockdata[1],
					# 					:volume => stockdata[2],
					# 			:change_percent => stockdata[4].gsub("\r\n", "").gsub('"', ''),
					# 			:open => stockdata[5],
					# 			:day_high => stockdata[6],
					# 			:day_low => stockdata[7],
					# 			:previous_close => stockdata[8],
					# 			:after_hours_change => stockdata[9].gsub("\r\n", "").gsub('"', ''),
					# 			:ma50 => stockdata[10],
					# 			:ma200 => stockdata[11],
					# 			:week52_range => stockdata[12].gsub("\r\n", "").gsub('"', ''),
					# 			:pe_ratio => stockdata[13],
					# 			:exchange => strip_extra_chars(stockdata[14]),
					# 			:float => stockdata[15]
					# 		}
          #
					# 	end
					# end
				end
				return output.compact
			end

	    def self.send_request(tickers)
	        # completed_path = @@service_uri + "?f=l1c1vsp2ohgpc8m3m4wr2xf6&s=" + tickers
	        completed_path = @@service_uri + "?f=#{build_request_columns_string}&s=" + tickers
	        uri = URI.parse(completed_path)
	        response = Net::HTTP.start(uri.host, uri.port) do |http|
	            http.get completed_path
	        end
	        return response.body
			end

			def self.build_request_columns_string
				result = ""
				@request_columns.each do |col|
					fail "Invalid data parameter requested from Yahoo API: #{col}" if YahooAPI::Quote::API_KEYS[col].nil?
					result << YahooAPI::Quote::API_KEYS[col]
				end
				result
			end

			def self.parse_returned_data(row)
				result = {}
				stockdata = row.split(",")
				return if stockdata.nil?

				@request_columns.each_with_index do |rq, i|
					result[rq] = strip_extra_chars(stockdata[i])
				end

				return if result[:symbol].nil?

				result
			end

			def self.strip_extra_chars(text)
				text.gsub("\r\n", "").gsub('"', '')
			end

			def self.version
				return Gem::VERSION
			end
	end
