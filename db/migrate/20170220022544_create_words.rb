class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :name
      t.text :translation
      t.string :phonetic
      t.text :sentence
      t.integer :error_count
      t.integer :try_count
      t.float :difficult_coefficient
      t.references :word_src, foreign_key: true

      t.timestamps
    end
  end
end
