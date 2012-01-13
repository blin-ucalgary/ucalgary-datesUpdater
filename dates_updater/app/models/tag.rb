class Tag < ActiveRecord::Base
  has_and_belongs_to_many :important_dates
  
  before_save :downcase_tag_name

  def as_json(options={})
    {
      :name => self.name
    }
  end

  protected

  def downcase_tag_name
    self.name.downcase!
  end

end
