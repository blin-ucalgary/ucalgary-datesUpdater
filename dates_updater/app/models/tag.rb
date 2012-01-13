class Tag < ActiveRecord::Base
  has_and_belongs_to_many :important_dates

  def as_json(options={})
    {
      :name => self.name
    }
  end

end
