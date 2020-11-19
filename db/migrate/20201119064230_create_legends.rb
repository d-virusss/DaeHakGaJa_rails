class CreateLegends < ActiveRecord::Migration[6.0]
  def change
    create_table :legends do |t|
      t.string :name
      t.timestamps
    end
  end
end
