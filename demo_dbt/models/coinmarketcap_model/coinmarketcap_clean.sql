{{ config(materialized='table') }}

SELECT 
	id
	, name
	, symbol
	, num_market_pairs
	, CAST(date_added AS timestamp) AS date_added
	, max_supply
	, circulating_supply
	, total_supply
	, infinite_supply
	, CAST(last_updated AS timestamp) AS last_updated
	, "quote.USD.price" AS USD_price
	, "quote.USD.volume_24h" AS USD_volume_24h
	, "quote.USD.volume_change_24h" AS USD_volume_change_24h
	, "quote.USD.percent_change_24h" AS USD_percent_change_24h
	, "quote.USD.percent_change_7d" AS USD_percent_change_7d
	, "quote.USD.percent_change_30d" AS USD_percent_change_30d
	, "quote.USD.market_cap" AS USD_market_cap
	, "quote.USD.market_cap_dominance" AS USD_market_cap_dominance
	, "quote.USD.fully_diluted_market_cap" AS USD_fully_diluted_market_cap
	, "platform.id" AS platform_id
	, "platform.name" AS platform_name
	, "platform.symbol" AS platform_symbol
	, "platform.token_address" AS platform_token_address
	, CAST("timestamp" AS timestamp) AS timestamp
FROM staging.coinmarketcap_top_100_crypto
ORDER BY "quote.USD.market_cap" DESC
LIMIT 50