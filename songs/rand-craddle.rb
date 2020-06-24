def craddle(tune)
  kord = choose(chord(tune, :major))
  play kord,
    release: [1, 2, 3, 4, 5].sample,
    cutoff: rrand((50..90).to_a.sample, (80..120).to_a.sample)
  sleep 0.280
end

use_synth :zawa
loop do
  2.times do
    16.times { craddle([:E, :D].sample) }
    16.times { craddle([:A, :B].sample) }
  end
  
  with_fx :reverb do
    16.times { craddle([:B, :A, :D].sample) }
    16.times { craddle([:G, :B, :A].sample) }
    8.times  { craddle(:D) }
  end
end

