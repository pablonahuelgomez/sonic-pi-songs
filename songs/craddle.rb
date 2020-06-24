def craddle(tune)
  kord = choose(chord(tune, :major))
  play kord,
    release: 3,
    cutoff: rrand(70, 120)
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

