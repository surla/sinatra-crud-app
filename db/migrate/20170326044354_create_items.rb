class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :content
      t.belongs_to :user
    end
  end
end
