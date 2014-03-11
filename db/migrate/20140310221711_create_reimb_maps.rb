class CreateReimbMaps < ActiveRecord::Migration
  def change
    create_table :reimb_maps do |t|
      t.integer :icd10dx_id
      t.integer :icd9dx_id

      t.timestamps
    end
  end
end
