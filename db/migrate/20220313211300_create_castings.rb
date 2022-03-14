class CreateCastings < ActiveRecord::Migration[7.0]
  def change
    create_table :castings do |t|
      t.integer :actor_id
      t.integer :director_id
      t.integer :producer_id
      t.integer :movie_id
      t.timestamps
    end

    add_index(:castings, [:movie_id, :actor_id])
  end
end
