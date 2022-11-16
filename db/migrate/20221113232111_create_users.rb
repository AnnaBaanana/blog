class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :image_url
      t.boolean :is_author
      t.string :bio
      t.date :author_started_at
      t.date :author_ended_at

      t.timestamps
    end
  end
end
