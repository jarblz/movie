class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :genre
      t.references :user, index: true

      t.timestamps
    end
  end
end
