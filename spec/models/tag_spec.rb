# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tag, type: :model do
  context 'creation' do
    let(:user1) { User.create(name: 'user1', email: 'user1@mail.com', password: '123456') }
    let(:article) { Article.create(title: 'title...', body: 'article..', image: 'default', author_id: user1.id) }
    let(:category) { Category.create({ name: 'Category1', priority: 1 }) }

    it 'can be created with the right arguments' do
      tag = Tag.create(article_id: article.id, category_id: category.id)
      expect(tag).to be_valid
    end

    it 'can not be created if any of the required arguments is missing' do
      tag = Tag.create(article_id: article.id, category_id: nil)
      expect(tag).not_to be_valid
    end
  end
end
