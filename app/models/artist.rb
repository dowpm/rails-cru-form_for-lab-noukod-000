class Artist < ActiveRecord::Base

  def slug
    name.gsub(" ", "-").downcase
  end

  def find_by_slug slug
    self.all.find{ |instance| instance.slug == slug }
  end
end
