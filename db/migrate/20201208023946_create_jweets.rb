class CreateJweets < ActiveRecord::Migration[5.2]
  def change
    create_table :jweets do |t|
      t.text :content
    end
  end
end
