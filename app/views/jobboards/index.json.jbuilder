json.array!(@jobboards) do |jobboard|
  json.extract! jobboard, :jobTitle, :company, :hours, :salary, :description, :requirements, :website,  :jobType
  json.url jobboard_url(jobboard, format: :json)
end