class CreateResults < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'uuid-ossp'
    enable_extension 'pgcrypto'


    create_table :results, id: :uuid do |t|
      t.jsonb :data

      t.timestamps
    end
  end
end
