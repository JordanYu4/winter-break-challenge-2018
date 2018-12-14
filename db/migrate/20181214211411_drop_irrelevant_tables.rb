class DropIrrelevantTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :comments
    drop_table :missions
    drop_table :categories
  end
end
