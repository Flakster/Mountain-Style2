# frozen_string_literal: true

# module categorieshelper
module CategoriesHelper
  def left_image?(index)
    (index / 2).even?
  end
end
