class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.references :major, null: false, foreign_key: true
      t.decimal :male_ratio
      t.decimal :female_ratio
      t.integer :avg_salary
      t.decimal :satisfaction
      t.decimal :employment_rate
      t.decimal :applicant_rate

      t.timestamps
    end
  end
end
