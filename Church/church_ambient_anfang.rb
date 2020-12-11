3.times do
  sample :loop_garzul, beat_stretch: rrand(1, 1.5)
  use_synth :prophet
  play choose(chord(:c1, :minor)), release: 8, cutoff: rrand(70, 130)
  sleep 8
end