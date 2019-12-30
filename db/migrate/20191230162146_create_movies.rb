class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.text :url
      t.text :presentation_day

      t.timestamps
    end
  end
end
