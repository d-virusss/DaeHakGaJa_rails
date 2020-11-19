class CreateMajors < ActiveRecord::Migration[6.0]
  def change
    create_table :majors do |t|
      t.string :name
      t.text :summary
      t.string :main_subject
      t.string :enter_field
      t.string :job
      t.references :legend, null: true, foreign_key: true
    end
  end
end
