json.array!(@jobboards) do |jobboard|
  json.extract! jobboard, :jobTitle, :company, :hours, :full, :partTime, :salary, :description, :requirements, :website
  json.url jobboard_url(jobboard, format: :json)
end