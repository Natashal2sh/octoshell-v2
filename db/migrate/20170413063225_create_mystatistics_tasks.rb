class CreateMystatisticsTasks < ActiveRecord::Migration
  def change
    create_table :mystatistics_tasks do |t|
      t.integer :claster
      t.integer :ntask
      t.string :login
      t.datetime :tbegin
      t.datetime :tend
      t.integer :nodes
      t.integer :cores
      t.string :status

      t.timestamps null: false
    end
  end
end
