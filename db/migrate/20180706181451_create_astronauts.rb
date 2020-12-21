class CreateAstronauts < ActiveRecord::Migration[5.1]
  def change
    create_table :astronauts do |t|
      t.string :name
      t.integer :age
      t.string :job
    end
  end
end
