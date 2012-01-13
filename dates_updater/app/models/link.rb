class Link < ActiveRecord::Base
  belongs_to :important_date, :inverse_of => :link

  def as_json(options={})
    {
      :name => self.name,
      :url  => self.url
    }
  end

end
