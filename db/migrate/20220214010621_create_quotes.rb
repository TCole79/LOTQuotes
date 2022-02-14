class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :quote_content
      t.string :quote_author
      t.string :quote_image

      t.timestamps
    end
  end
end
