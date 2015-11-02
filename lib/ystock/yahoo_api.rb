module YahooAPI
  module Quote
    DEFAULT_REQUEST_COLUMNS=[
        :symbol,
        :price,
        :change,
        :volume,
        :change_percent,
        :open,
        :day_high,
        :day_low,
        :previous_close,
        :after_hours_change,
        :ma50,
        :ma200,
        :week52_range,
        :pe_ratio,
        :exchange,
        :float,
    ]

    API_KEYS= {
        # Note that some of these options may plug into Yahoo's watchlist feature and are not supported by Ystock
        after_hours_change_realtime: 'c8',
        annualized_gain: 'g3',
        ask: 'a',
        ask_realtime: 'b2',
        ask_size: 'a5',
        average_daily_volume: 'a2',
        bid: 'b',
        bid_realtime: 'b3',
        bid_size: 'b6',
        book_value_per_share: 'b4',
        change: 'c1',
        change_in_percent: 'c',
        change_from_fifty_day_moving_average: 'm7',
        change_from_two_hundred_day_moving_average: 'm5',
        change_from_year_high: 'k4',
        change_from_year_low: 'j5',
        change_in_percent_realtime: 'k2',
        change_realtime: 'c6',
        commission: 'c3',
        currency: 'c4',
        days_high: 'h',
        days_low: 'g',
        days_range: 'm',
        days_range_realtime: 'm2',
        days_value_change: 'w1',
        days_value_change_realtime: 'w4',
        dividend_pay_date: 'r1',
        trailing_annual_dividend_yield:  'd',
        trailing_annual_dividend_yield_in_percent:  'y',
        diluted_eps:  'e',
        ebitda:  'j4',
        eps_estimate_current_year:  'e7',
        eps_estimate_next_quarter:  'e9',
        eps_estimate_next_year:  'e8',
        ex_dividend_date:  'q',
        fiftyday_moving_average:  'm3',
        shares_float:  'f6',
        high_limit:  'l2',
        holdings_gain:  'g4',
        holdings_gain_percent:  'g1',
        holdings_gain_percent_realtime:  'g5',
        holdings_gain_realtime:  'g6',
        holdings_value:  'v1',
        holdings_value_realtime:  'v7',
        last_trade_date:  'd1',
        last_trade_price_only:  'l1',
        last_trade_realtime_with_time:  'k1',
        last_trade_size:  'k3',
        last_trade_time:  't1',
        last_trade_with_time:  'l',
        low_limit:  'l3',
        market_capitalization:  'j1',
        market_cap_realtime:  'j3',
        more_info:  'i',
        name:  'n',
        notes:  'n4',
        oneyr_target_price:  't8',
        open:  'o',
        order_book_realtime:  'i5',
        peg_ratio:  'r5',
        pe_ratio:  'r',
        pe_ratio_realtime:  'r2',
        percent_change_from_fiftyday_moving_average:  'm8',
        percent_change_from_two_hundredday_moving_average:  'm6',
        change_in_percent_from_year_high:  'k5',
        percent_change_from_year_low:  'j6',
        previous_close:  'p',
        price_book:  'p6',
        price_eps_estimate_current_year:  'r6',
        price_eps_estimate_next_year:  'r7',
        price_paid:  'p1',
        price_sales:  'p5',
        revenue:  's6',
        shares_owned:  's1',
        shares_outstanding:  'j2',
        short_ratio:  's7',
        stock_exchange:  'x',
        symbol:  's',
        ticker_trend:  't7',
        trade_date:  'd2',
        trade_links:  't6',
        trade_links_additional:  'f',
        two_hundredday_moving_average:  'm4',
        volume:  'v',
        year_high:  'k',
        year_low:  'j',
        year_range:  'w',

        # Duplicates here for reverse compatibility with previous version of Ystock
        change_percent: 'p2',
        price: 'l1',
        day_high: 'h',
        day_low: 'g',
        after_hours_change: 'c8',
        ma50: 'm3',
        ma200: 'm4',
        week52_range: 'w',
        exchange: 'x',
        float: 'f6',
    }
  end
end