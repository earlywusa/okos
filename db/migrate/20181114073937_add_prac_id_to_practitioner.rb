class AddPracIdToPractitioner < ActiveRecord::Migration[5.1]
  def change
    add_column :practitioners, :prac_id, :text
  end
end
