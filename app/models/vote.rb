# frozen_string_literal: true

class Vote < ApplicationRecord
  validates :user_id, uniqueness: { scope: :article_id }

  belongs_to :user
  belongs_to :article

  def self.voteid(user_id, article_id)
    where(user_id: user_id)
      .where(article_id: article_id)
      .select(:id)
  end

  def self.popular_article
    count_hash = Vote.group(:article_id).count
    article_id = count_hash.max_by { |_k, v| v }
    if article_id.nil?
      Article.first
    else
      Article.find(article_id[0])
    end
  end
end