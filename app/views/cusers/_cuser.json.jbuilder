json.extract! cuser, :id, :name, :password, :email, :mobile, :gender, :created_at, :updated_at
json.url cuser_url(cuser, format: :json)
