def drums(data = {})
  sample :loop_amen, data
  sleep 1.75
end

def only_drums
  [
    { pan: -1, amp: 1 },
    { pan: 1,  amp: 2 },
    { pan: 0,  amp: 3 }
  ].each do |data|
    drums(data)
  end
end

def moon_drums
  drums amp: 4
  sample :ambi_lunar_land, amp: 4, release: 6
end

def moon_little_drums
  sample :ambi_haunted_hum, amp: 4, release: 4
  sample :ambi_swoosh, amp: 4, release: 5
  
  drums amp: 5
end

def cypress_flash
  sample :vinyl_scratch, amp: 2
  sample :vinyl_backspin, amp: 10
  sample :vinyl_rewind, amp: 2, beat_stretch: 15
end

def verse
  4.times do
    2.times { moon_drums }
    4.times { moon_little_drums }
    sample :loop_3d_printer, amp: 10, release: 10
  end
  
  8.times { moon_little_drums }
end

def intro
  cypress_flash
  sleep 4.5
  only_drums
  verse
end

loop {
  
  intro
  moon_drums
  verse
  moon_little_drums
  
}


