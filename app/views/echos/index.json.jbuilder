json.array!(@echos) do |echo|
  json.extract! echo, :id, :body
  json.url echo_url(echo, format: :json)
end
