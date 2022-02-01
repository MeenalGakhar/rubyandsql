class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :createdat
      t.string :notes
      t.timestamps
    end
  end
end
