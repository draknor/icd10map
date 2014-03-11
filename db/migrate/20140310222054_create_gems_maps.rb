class CreateGemsMaps < ActiveRecord::Migration
  def change
    create_table :gems_maps do |t|
      t.integer :icd10dx_id
      t.integer :icd9dx_id
      t.integer :mapDir
      t.boolean :is_approx
      t.boolean :is_no_map
      t.boolean :is_combo
      t.integer :scenario
      t.integer :choice_list

      t.timestamps
    end
  end
end
