class CreateUniversityMajors < ActiveRecord::Migration[6.0]
  def change
    create_table :university_majors do |t|
      t.references :major, null: true, foreign_key: true
      t.references :university, null: true, foreign_key: true

      t.timestamps
    end
  end
end
