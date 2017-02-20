json.extract! word, :id, :name, :translation, :phonetic, :sentence, :error_count, :try_count, :difficult_coefficient, :word_src_id, :created_at, :updated_at
json.url word_url(word, format: :json)