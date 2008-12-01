class CreateReaders < ActiveRecord::Migration
  def self.up
    create_table :readers do |t|
      t.string :name, :limit => 128
      t.string :email, :limit => 128
      t.string :identity_code, :limit => 40

      t.timestamps
    end
  end

  def self.down
    drop_table :readers
  end
end
