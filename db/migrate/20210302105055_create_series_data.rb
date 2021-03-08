class CreateSeriesData < ActiveRecord::Migration[6.1]
  def change
    create_table :series_data do |t|
      t.string :name
      t.string :fav_char
      

      t.timestamps
    end
  end
end
