class CreateKitOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :kit_orders do |t|
      t.integer :prac_id
      t.text :comment
      t.string :status
      t.integer :location_id
      t.string :out_bound_tracking_id
      t.string :in_bound_tracking_id
      # :created_at, :datetime
      t.timestamps
    end
  end
end
