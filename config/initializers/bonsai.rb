if Rails.env.production?
  Elasticsearch::Model.client = Elasticsearch::Client.new url: ENV['BONSAI_URL']
else
  Elasticsearch::Model.client = Elasticsearch::Client.new
end