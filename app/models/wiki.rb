class Wiki < ApplicationRecord
  belongs_to :user
  
  after_initialize :set_default_private, :if => :new_record?
  
  def set_default_private
    self.private ||= false
  end
end
