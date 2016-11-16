json.extract! member, :id, :member_address, :email, :name, :money_owed, :Branch_id, :created_at, :updated_at
json.url member_url(member, format: :json)