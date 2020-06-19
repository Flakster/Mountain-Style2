# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'creation' do
    it 'can be created with the right arguments' do
      user = User.create({ name: 'user1', email: 'user1@mail.com', password: '123456' })
      expect(user).to be_valid
    end

    it 'can not be created if some of the required arguments is missing' do
      user = User.create({ name: nil, email: 'user1@mail.com', password: nil })
      expect(user).not_to be_valid
    end

    it 'can not be created if the email already exists' do
      User.create({ name: 'user1', email: 'user@mail.com', password: '123123' })
      user2 = User.create({ name: 'user2', email: 'user@mail.com', password: '456456' })
      expect(user2).not_to be_valid
    end
  end
end
