class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_to_s
    active_message = (self.active ? 'active' : 'inactive')
    "This student is currently #{active_message}."
  end

  def activate
    self.active = !self.active
    self.save
  end
end