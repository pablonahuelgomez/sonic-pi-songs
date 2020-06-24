def drums(data = {})
  sample :loop_amen, data, attack_level: 10
  sleep 1.75
end

def only_drums
  [
    { pan: -1, amp: 1 },
    { pan: 1,  amp: 2 },
    { pan: 0,  amp: 3}
  ].each do |data|
    drums(data)
  end
end

def moon_drums
  drums amp: 4
  sample :ambi_lunar_land, amp: 4, release: 6, attack_level: 5
end

def moon_little_drums
  sample :ambi_haunted_hum, amp: 4, release: 4
  sample :ambi_swoosh, amp: 4, release: 5
  drums amp: 5
end

def intro
  only_drums
  
  4.times do
    2.times { moon_drums }
    2.times { moon_little_drums }
    sample :loop_electric, amp: 10, release: 10
  end
  
  4.times do
    2.times { moon_drums }
    sample :loop_industrial, amp: 10, release: 10
    
    2.times { moon_little_drums }
    sample :loop_industrial, amp: 10, release: 10
  end
  
  8.times { moon_little_drums }
end

loop { intro }


