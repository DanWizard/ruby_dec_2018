class Ninja < ActiveRecord::Base
  belongs_to :dojo
  validates :name, presence: true, length: { in: 2..20 },length: { in: 2..20 }
end
