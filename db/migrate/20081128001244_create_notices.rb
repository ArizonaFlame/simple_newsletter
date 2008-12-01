class CreateNotices < ActiveRecord::Migration
  def self.up
    create_table :notices do |t|
      t.string :name, :limit => 128
      t.string :subject, :limit => 128
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :notices
  end
end
