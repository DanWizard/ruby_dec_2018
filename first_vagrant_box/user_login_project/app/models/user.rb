class User < ActiveRecord::Base
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }#, message: "age invalid"
  validates :age, presence:true, numericality: {greater_than:10, less_than: 150}#,# less_than: 150#, message: "Age invalid"
  
 end
