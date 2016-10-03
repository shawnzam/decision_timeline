json.extract! subject_session, :id, :timeline_id, :title, :created_at, :updated_at
json.url subject_session_url(subject_session, format: :json)