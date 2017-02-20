class Word < ApplicationRecord
  belongs_to :word_src

	serialize :translation, Array
end
