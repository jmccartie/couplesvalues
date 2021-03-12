class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.jsonb :data

      t.timestamps
    end
  end
end
