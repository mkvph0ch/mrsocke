use_bpm 60
start = 50
use_random_seed 42

amp_lower = [1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1]

live_loop :windwehen do
  sample :vinyl_rewind, beat_stretch: 7
  sleep 7
end
