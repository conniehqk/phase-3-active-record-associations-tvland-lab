class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  def actors_list
      res = []
      self.characters.each do |c|
        res << Actor.find(c.actor_id).full_name
      end
      res
  end
end