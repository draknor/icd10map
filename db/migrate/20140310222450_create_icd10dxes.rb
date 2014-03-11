class CreateIcd10dxes < ActiveRecord::Migration
  def change
    create_table :icd10dxes do |t|
      t.string :code
      t.string :description_short
      t.text :description_long

      t.timestamps
    end
  end
end
