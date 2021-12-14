class CreateProyectos < ActiveRecord::Migration[5.2]
  def change
    create_table :proyectos do |t|
      t.string :name
      t.text :description
      t.date :starting_date
      t.date :ending_date
      t.string :state

      t.timestamps
    end
  end
end
