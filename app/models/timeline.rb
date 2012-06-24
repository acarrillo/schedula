class Timeline < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    timestamps
  end
  
  
  has_many :event_assignments, :dependent => :destroy
  
  children :events, :followships
  has_many :events, :through => :event_assignments, :accessible => :true
  
  has_many :followships, :class_name => "TimelineFollowship", :dependent => :destroy, :accessible => true
  has_many :followers, :through => :followships, :source => :user

  belongs_to :owner, :class_name => "User", :creator => true

  # --- Permissions --- #

  def create_permitted?
    owner_is? acting_user
  end

  def update_permitted?
    acting_user.administrator? || (owner_is?(acting_user))
  end

  def destroy_permitted?
    acting_user.administrator? || owner_is?(acting_user)
  end

  def view_permitted?(field)
    true
  end

end
