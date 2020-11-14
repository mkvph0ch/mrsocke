use_bpm 100

live_loop :my_piano do
  use_synth :piano
  play :c, amp: 2, attack: 1, attack_level: 2, decay: 0, decay_level: 5, sustain: 0, release: 1
  sleep 5
end

live_loop :amen_break do
  sample :loop_amen, beat_stretch: 2, rate: -1
  sleep 2
end

live_loop :precussion do
  sample :perc_door
  sleep 1
  sample :drum_bass_hard, amp: 3, attack: 0.1, beat_stretch: 2
  sleep 1
end

