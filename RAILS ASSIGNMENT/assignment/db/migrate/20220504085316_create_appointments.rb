class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
     
      t.references :physician, index: true, foreign_key: true, null: false
      t.references :patient, index: true, foreign_key: true, null: false

      t.datetime :appointment_date
      t.timestamps
    end
  end
end
