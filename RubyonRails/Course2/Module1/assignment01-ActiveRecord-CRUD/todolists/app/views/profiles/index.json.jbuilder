json.array!(@profiles) do |profile|
  json.extract! profile, :id, :gender, :birth_year, :integer, :first_nmae, :last_name
  json.url profile_url(profile, format: :json)
end
