class CreateFeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feds do |t|
      t.date :date
      t.string :buyer
      t.boolean :ate, array: true, default: []

      t.timestamps
    end
  end
end
