# frozen_string_literal: true

json.extract! article, :id, :title, :body, :image, :user_id, :created_at, :updated_at # rubocop:disable Layout/LineLength
json.url article_url(article, format: :json)
