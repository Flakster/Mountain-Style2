# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vote, type: :model do # rubocop:disable Metrics/BlockLength
  context 'creation' do
    let(:user) do
      User.create(name: 'user1',
                  email: 'user1@mail.com',
                  password: '123456')
    end
    let(:article) do
      Article.create(title: 'title...',
                     body: 'article..',
                     image: 'default',
                     author_id: user.id)
    end

    it 'can be created with the right arguments' do
      vote = Vote.create(user_id: user.id, article_id: article.id)
      expect(vote).to be_valid
    end

    it 'can not be created if any of the required arguments is missing' do
      vote = Vote.create(user_id: nil, article_id: article.id)
      expect(vote).not_to be_valid
    end

    it 'can\'t be created if already exists' do
      Vote.create(user_id: user.id, article_id: article.id)
      vote2 = Vote.create(user_id: user.id, article_id: article.id)
      expect(vote2).not_to be_valid
    end
  end

  context 'vote methods' do # rubocop:disable Metrics/BlockLength
    let(:user1) do
      User.create(name: 'user1',
                  email: 'user1@mail.com',
                  password: '123456')
    end
    let(:user2) do
      User.create(name: 'user2',
                  email: 'user2@mail.com',
                  password: '123456')
    end
    let(:article1) do
      Article.create(title: 'Article1',
                     body: 'article..',
                     image: 'default',
                     author_id: user1.id)
    end
    let(:article2) do
      Article.create(title: 'Article2',
                     body: 'article..',
                     image: 'default',
                     author_id: user1.id)
    end

    it 'can retrieve the vote id by giving user and article' do
      vote = Vote.create(user_id: user1.id, article_id: article1.id)
      vote_id = Vote.voteid(user1.id, article1.id).first.id
      expect(vote_id).to eql(vote.id)
    end

    it 'chooses the most popular article based on the amount of votes' do
      Vote.create(user_id: user1.id, article_id: article1.id)
      Vote.create(user_id: user1.id, article_id: article2.id)
      Vote.create(user_id: user2.id, article_id: article2.id)
      article = Vote.popular_article
      expect(article.title).to eq('Article2')
    end
  end
end
