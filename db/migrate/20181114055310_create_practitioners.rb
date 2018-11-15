class CreatePractitioners < ActiveRecord::Migration[5.1]
  def change
    create_table :practitioners do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :clinic_name
      t.string :prac_title
      t.string :email
      t.string :delivery_email
      t.text :comment
      t.boolean :active

      t.timestamps
    end
  end
end
