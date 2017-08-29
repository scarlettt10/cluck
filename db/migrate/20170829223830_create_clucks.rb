class CreateClucks < ActiveRecord::Migration[5.1]
  def change
    create_table :clucks do |t|
      t.string :user
      t.string :interest

      t.timestamps
    end
  end
end
