class ImportantDate < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_one :link , :dependent => :destroy, :inverse_of => :important_date

  accepts_nested_attributes_for :link, :allow_destroy => true
end
