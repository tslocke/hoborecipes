class City < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    timestamps
  end

  belongs_to :country

  # --- Hobo Permissions --- #

  def creatable_by?(creator)
    creator.administrator?
  end

  def updatable_by?(updater, updated)
    updater.administrator?
  end

  def deletable_by?(deleter)
    deleter.administrator?
  end

  def viewable_by?(viewer, field)
    true
  end

end
