json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :article_id, :name, :url, :active
  json.url attachment_url(attachment, format: :json)
end
