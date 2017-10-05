class Wiki < ApplicationRecord
  belongs_to :user
  
  default_scope { order('created_at DESC') }

  after_initialize :set_default_private, :if => :new_record?
  
  def set_default_private
    self.private ||= false
  end
end
