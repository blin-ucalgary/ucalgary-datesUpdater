class CreateDatesTagsJoinTable < ActiveRecord::Migration
  def up
    create_table :important_dates_tags do |t|
      t.integer "important_date_id"
      t.integer "tag_id"
    end
  end

  def down
    drop_table :important_dates_tags
  end
end
