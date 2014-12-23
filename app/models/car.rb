class Car < ActiveRecord::Base
  belongs_to :profiles
  has_one :owner,  ->  {where is_owner: true}, class_name:"Profile"

end
