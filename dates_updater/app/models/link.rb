class Link < ActiveRecord::Base
  belongs_to :important_date, :inverse_of => :link

  validates_presence_of :url
  before_save :check_url_name

  def as_json(options={})
    {
      :name => self.name,
      :url  => self.url
    }
  end

  protected

  def check_url_name
    if not self.name?
      self.name = self.url
    end
  end

end
