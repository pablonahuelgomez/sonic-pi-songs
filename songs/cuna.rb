def craddle(tune)
  play(
    choose(chord(tune, :major)),
    release: 3,
    cutoff: rrand(70, 120)
  )
  sleep [0.450, 0.400].sample
end

use_synth :zawa
loop do
  2.times do
    16.times { craddle(:E) }
    16.times { craddle(:A) }
  end

  16.times { craddle(:B) }
  16.times { craddle(:A) }
  8.times  { craddle(:D) }
end
