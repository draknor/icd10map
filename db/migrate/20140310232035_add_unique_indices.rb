class AddUniqueIndices < ActiveRecord::Migration
  def change
    add_index :icd9dxes, :code, :unique => true
    add_index :icd10dxes, :code, :unique => true
  end
end
