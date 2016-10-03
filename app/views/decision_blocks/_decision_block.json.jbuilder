json.extract! decision_block, :id, :decision_text, :value, :timeline_id, :ordering, :type, :created_at, :updated_at
json.url decision_block_url(decision_block, format: :json)