class DeviseCreateCredentials < ActiveRecord::Migration
  def self.up
    create_table(:credentials) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.integer :user_id

      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :credentials, :email,                :unique => true
    add_index :credentials, :reset_password_token, :unique => true
    # add_index :credentials, :confirmation_token,   :unique => true
    # add_index :credentials, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :credentials
  end
end
