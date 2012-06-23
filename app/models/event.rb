class Event < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :text
    start       :datetime
    finish      :datetime
    timestamps
  end
  
  has_many :timelines, :through => :event_assignments, :accessible => :true
  has_many :event_assignments, :dependent => :destroy
  
  

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
