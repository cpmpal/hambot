class FixBoolArrau < ActiveRecord::Migration[5.1]
  def change
      change_column_null :feds, :ate, false
  
  end
end
