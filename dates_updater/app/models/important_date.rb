class ImportantDate < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_one :link , :dependent => :destroy, :inverse_of => :important_date

  accepts_nested_attributes_for :link, :allow_destroy => true

  def as_json(options={})
    {
      :description  => self.description,
      :startDate    => self.start_date,
      :endDate      => self.end_date,
      :tags         => self.tags,
      :link         => self.link
    }
  end
end
