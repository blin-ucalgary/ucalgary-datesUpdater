class AssociateLinkToImportantDates < ActiveRecord::Migration
  def change
    change_table :links do |t|
      t.references :important_date
    end
  end
end
