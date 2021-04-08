class Device < ApplicationRecord
  belongs_to :producer
  belongs_to :category
  belongs_to :supplier
end
