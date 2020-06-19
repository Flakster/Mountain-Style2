# frozen_string_literal: true

module CategoriesHelper
  def left_image?(index)
    (index / 2).even?
  end
end