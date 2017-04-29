class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.integer :ttb_id
      t.string :type
      t.string :status
      t.date :date_issued

      t.timestamps
    end
  end
end
