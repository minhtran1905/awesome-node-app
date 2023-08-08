class ChangeSchemaV1 < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :content, null: false, default: ''

      t.timestamps null: false
    end

    create_table :users do |t|
      t.string :unconfirmed_email

      t.integer :failed_attempts, null: false, default: 0

      t.datetime :last_sign_in_at

      t.datetime :confirmed_at

      t.string :last_sign_in_ip

      t.string :current_sign_in_ip

      t.string :encrypted_password, null: false, default: ''

      t.string :fullname

      t.datetime :remember_created_at

      t.datetime :locked_at

      t.datetime :current_sign_in_at

      t.string :confirmation_token

      t.string :password_confirmation

      t.integer :sign_in_count, null: false, default: 0

      t.datetime :reset_password_sent_at

      t.datetime :confirmation_sent_at

      t.string :reset_password_token

      t.string :password

      t.string :email, null: false, default: ''

      t.string :unlock_token

      t.timestamps null: false
    end

    add_reference :notes, :user, foreign_key: true

    add_index :users, :unconfirmed_email, unique: true
    add_index :users, :confirmation_token, unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :email, unique: true
    add_index :users, :unlock_token, unique: true
  end
end
