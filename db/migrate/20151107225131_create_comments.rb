class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :body
      t.references :message, index: true

      t.timestamps
    end
  end
end
