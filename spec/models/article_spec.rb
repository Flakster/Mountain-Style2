# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do # rubocop:disable Metrics/BlockLength
  context 'creation' do
    let(:user1) do
      User.create(name: 'user1',
                  email: 'user1@mail.com',
                  password: '123456')
    end
    it 'can be created with the correct arguments' do
      article = Article.create(title: 'title...',
                               body: 'article..',
                               image: 'default',
                               author_id: user1.id)
      expect(article).to be_valid
    end
    it 'can not be created without the required arguments' do
      article = Article.new(title: nil,
                            body: 'article..',
                            image: 'default',
                            author_id: user1.id)
      expect(article).not_to be_valid
    end
  end

  context 'sorting' do
    let(:user1) do
      User.create(name: 'user1',
                  email: 'user1@mail.com',
                  password: '123456')
    end
    it 'will sort at the beginning the last created' do
      article = Article.create(title: 'title...',
                               body: 'article..',
                               image: 'default',
                               author_id: user1.id)
      expect(Article.recent.first.id).to equal(article.id)
    end
  end
end
