class CreateImportantDatesTags < ActiveRecord::Migration
  create_table :important_dates_tags, :id => false do |t|
    t.integer :important_date_id
    t.integer :tag_id
  end
end
