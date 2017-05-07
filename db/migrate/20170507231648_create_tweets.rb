class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :status
      t.references :zombie, null: false, index: true

      t.timestamps
    end
  end
end
