# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[8.0]
  def change
    
    table_name = :users
    if !data_source_exists?(table_name)
      create_table(table_name, id: false,  primary_key: :id, options: "CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;")  do |t|
        t.primary_key :id, :unsigned_integer, null: false, auto_increment: true
        t.timestamps
      end
    end
    
    ## Database authenticatable
    add_column(table_name, :email, :string, :collation => "utf8mb4_unicode_ci", null: false, default: "") unless column_exists?(table_name, :email)
    add_column(table_name, :encrypted_password, :string, :collation => "utf8mb4_unicode_ci", null: false, default: "") unless column_exists?(table_name, :encrypted_password)
    
    ## Recoverable
    add_column(table_name, :reset_password_token, :string, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :reset_password_token)
    add_column(table_name, :reset_password_sent_at, :datetime, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :reset_password_sent_at)

    ## Rememberable
    add_column(table_name, :remember_created_at, :datetime, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :remember_created_at)
    
    ## Trackable
    add_column(table_name, :sign_in_count, :integer, :collation => "utf8mb4_unicode_ci", default: 0, null: false) unless column_exists?(table_name, :sign_in_count)
    add_column(table_name, :current_sign_in_at, :datetime, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :current_sign_in_at)
    add_column(table_name, :last_sign_in_at, :datetime, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :last_sign_in_at)
    add_column(table_name, :current_sign_in_ip, :string, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :current_sign_in_ip)
    add_column(table_name, :last_sign_in_ip, :string, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :last_sign_in_ip)

    ## Confirmable
    add_column(table_name, :confirmation_token, :string, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :confirmation_token)
    add_column(table_name, :confirmed_at, :datetime, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :confirmed_at)
    add_column(table_name, :confirmation_sent_at, :datetime, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :confirmation_sent_at)
    add_column(table_name, :unconfirmed_email, :string, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :unconfirmed_email) # Only if using reconfirmable

    ## Lockable
    add_column(table_name, :failed_attempts, :integer, :collation => "utf8mb4_unicode_ci", default: 0, null: false) unless column_exists?(table_name, :failed_attempts) # Only if lock strategy is :failed_attempts
    add_column(table_name, :unlock_token, :string, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :unlock_token)
    add_column(table_name, :locked_at, :datetime, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :locked_at)
    add_column(table_name, :unconfirmed_email, :string, :collation => "utf8mb4_unicode_ci") unless column_exists?(table_name, :unconfirmed_email) # Only if using reconfirmable

    # t.timestamps null: false
    
    add_index table_name, :email,                unique: true unless index_exists?(table_name, :email)
    add_index table_name, :reset_password_token, unique: true unless index_exists?(table_name, :reset_password_token)
    add_index table_name, :confirmation_token,   unique: true unless index_exists?(table_name, :confirmation_token)
    add_index table_name, :unlock_token,         unique: true unless index_exists?(table_name, :unlock_token)
  end
end
