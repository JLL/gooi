module StudiesHelper
  
  def render_random_english_words(words, word)
    random_words = [
      generate_english_word(words[rand(words.size)].name), 
      generate_english_word(words[rand(words.size)].name),
      words[rand(words.size)].name,
      words[rand(words.size)].name,
      word.name
      ]
    render_random_words(random_words, word.name, "word_en_#{word.id}")
  end
  
  def render_random_french_words(words, word)
    random_words = [
      generate_french_word(words[rand(words.size)].name_fr),
      generate_french_word(words[rand(words.size)].name_fr),
      words[rand(words.size)].name_fr,
      words[rand(words.size)].name_fr,
      word.name_fr
      ]
    render_random_words(random_words, word.name_fr, "word_fr_#{word.id}")
  end
  
  def render_random_japanese_words(words, word)
    random_words = [
      generate_japanese_word(rand(3) + 1),
      generate_japanese_word(rand(5) + 1),
      words[rand(words.size)].name_ja,
      words[rand(words.size)].name_ja,
      word.name_ja
      ]
    render_random_words(random_words, word.name_ja, "word_ja_#{word.id}")
  end
  
  def generate_english_word(word)
      "TODO"
  end
  
  def generate_french_word(word)
    "TODO"
  end
  
  HIRAGANA_TABLE = %w(あ い う え お か き く け こ きゃ きゅ きょ さ し す せ そ しゃ しゅ しょ た ち つ て と ちゃ ちゅ ちょ な に ぬ ね の にゃ にゅ にょ は ひ ふ へ ほ ひゃ ひゅ ひょ ま み む め も みゃ みゅ みょ や ゆ よ ら り る れ ろ りゃ りゅ りょ わ ん が ぎ ぐ げ ご ぎゃ ぎゅ ぎょ ざ じ ず ぜ ぞ じゃ じゅ じょ だ ぢ づ で ど ぢゃ ぢゅ ぢょ ば び ぶ べ ぼ びゃ びゅ びょ ぱ ぴ ぷ ぺ ぽ ぴゃ ぴゅ ぴょ)
  def generate_japanese_word(size)
    word = ""
    size.times do
      word << HIRAGANA_TABLE[rand(HIRAGANA_TABLE.size)]
    end
    word
  end
  
  def render_random_words(words, word, id)
    words.shuffle.each_with_index.collect do |w, i|
      content_tag(:p) do
        if w == word
          radio_button_tag(id, i) + label_tag("#{id}_#{i}", w + "*")
        else
          radio_button_tag(id, i) + label_tag("#{id}_#{i}", w)
        end
      end
    end.join
  end
end
