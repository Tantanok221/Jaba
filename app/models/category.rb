class Category < ApplicationRecord
  belongs_to :user
  belongs_to :category_group
end
