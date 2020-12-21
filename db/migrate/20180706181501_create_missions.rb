class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.string :title
      t.integer :time_in_space
    end
  end
end
