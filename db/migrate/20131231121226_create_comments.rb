class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.references :program, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
