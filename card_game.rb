deck = %w[h2 h3 h4 h5 h6 h7 h8 h9 h10 hj hq hk ha s2 s3 s4 s5 s6 s7 s8 s9 s10 sj sq sk sa d2 d3 d4 d5 d6 d7 d8 d9 c2 c3 c4 c5 c6 c7 c8 c9 c10 cj cq ck ca]
discard_deck = []
 until deck.empty?
  card = deck.sample
  deck.delete(card)
  discard_deck << card
  puts card
end  




