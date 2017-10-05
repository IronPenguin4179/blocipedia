class Wiki < ApplicationRecord
  has_many :collaborators
  has_many :users, through: :collaborators
  
  default_scope { order('created_at DESC') }

  after_initialize :set_default_private, :if => :new_record?
  
  def set_default_private
    self.private ||= false
  end
end
