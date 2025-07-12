class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :account
  belongs_to :category
end
