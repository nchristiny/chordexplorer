class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string     :url
      t.integer    :rating
      t.integer    :click_count
      t.text       :raw_html
      t.string     :binary_chords
      t.string     :domain
      t.references :song
      t.integer    :view_count
      t.integer    :review_count
      t.string     :ranking

      t.timestamps null: false
    end
  end
end
