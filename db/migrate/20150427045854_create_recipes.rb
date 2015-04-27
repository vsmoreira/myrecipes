class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, :summary, :description
      t.timestamps
    end
  end
end
