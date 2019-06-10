class CreateVisitedPages < ActiveRecord::Migration[5.2]
  def change
    create_table :visited_pages do |t|
      t.references :search_term, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
