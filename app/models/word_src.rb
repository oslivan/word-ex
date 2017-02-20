class WordSrc < ApplicationRecord
	has_many :words, dependent: :destroy
end
