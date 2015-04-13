class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :string
      t.text :body
      t.reference :project

      t.timestamps null: false
    end
  end
end
