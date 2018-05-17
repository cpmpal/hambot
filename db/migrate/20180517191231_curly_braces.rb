class CurlyBraces < ActiveRecord::Migration[5.1]
  def change
    change_column :feds, :ate, :boolean, array: true, default: "{}"
  
  end
end
