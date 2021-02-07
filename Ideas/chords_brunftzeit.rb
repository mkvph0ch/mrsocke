live_loop :chords do
  
  use_synth :fm
  play scale( 45, :minor).mirror.tick
  sleep 0.6
end
