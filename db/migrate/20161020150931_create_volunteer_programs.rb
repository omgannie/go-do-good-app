class CreateVolunteerPrograms < ActiveRecord::Migration
  def change
    create_table :volunteer_programs do |t|
      t.integer :organization_id
      t.integer :volunteer_id

      t.timestamps(null:false)
    end
  end
end
