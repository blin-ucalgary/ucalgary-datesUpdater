class CreateImportantDates < ActiveRecord::Migration
  def change
    create_table :important_dates do |t|
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
