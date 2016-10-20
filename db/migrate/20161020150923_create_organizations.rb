class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :issue_type
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps(null:false)
    end
  end
end
