class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :body
      t.string :tag
      t.string :date

      t.timestamps
    end
  end
end
