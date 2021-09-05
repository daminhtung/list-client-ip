class CreateClientIps < ActiveRecord::Migration[6.1]
  def change
    create_table :client_ips do |t|
      t.string :name

      t.timestamps
    end
  end
end
