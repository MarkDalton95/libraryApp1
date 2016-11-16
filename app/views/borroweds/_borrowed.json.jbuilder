json.extract! borrowed, :id, :return_date, :date_due, :Member_id, :Book_id, :created_at, :updated_at
json.url borrowed_url(borrowed, format: :json)