class CreateWordSrcs < ActiveRecord::Migration[5.0]
  def change
    create_table :word_srcs do |t|
      t.string :name
      t.string :create_person

      t.timestamps
    end
  end
end
