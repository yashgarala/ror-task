=begin
Exercise 2

Given a sentence, return the length of the last word in the sentence.
Input: sentence = “       This   is   my  ruby string     practical  assignment   ”
Expected output: 10
=end
def last_word_sentence(string)
    str_arr=string.split(" ").to_a
    p str_arr[-1].length
end
sentence = "       This   is   my  ruby string     practical  assignment   "
last_word_sentence(sentence)
