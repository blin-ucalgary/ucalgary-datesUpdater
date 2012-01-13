class ImportantDate < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_one :link
end
