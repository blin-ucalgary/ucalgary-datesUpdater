class Link < ActiveRecord::Base
  belongs_to :important_date, :inverse_of => :link
end
