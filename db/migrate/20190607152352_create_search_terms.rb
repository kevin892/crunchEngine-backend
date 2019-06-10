class CreateSearchTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :search_terms do |t|
      t.references :user, foreign_key: true
      t.string :search
      t.string :type

      t.timestamps
    end
  end
end
