class ImportantDate < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_one :link , :dependent => :destroy, :inverse_of => :important_date

  accepts_nested_attributes_for :link, :allow_destroy => true

  validates_presence_of :description, :start_date

  before_save :check_end_date

  def as_json(options={})
    {
      :description  => self.description,
      :start_date    => self.start_date,
      :end_date      => self.end_date,
      :link         => self.link,
      :tags         => self.tags

    }
  end

  protected

  def check_end_date
    if self.end_date.nil?
      self.end_date = self.start_date
    end

  end


end
