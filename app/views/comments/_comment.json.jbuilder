json.extract! comment, :id, :author_id, :opinion_id, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)
