class CsvFields < ActiveRecord::Migration[5.1]
  def change
    create_table :csvs do |t|
      t.string :name
      t.datetime :date
      t.integer :number
      t.string :description
    end
  end
end
