json.extract! card, :id, :issuer, :card_name, :created_at, :updated_at
json.url card_url(card, format: :json)
