in_thread do
  live_loop :drone_loop do
    with_fx :gverb do
      sample :loop_drone_g_97, amp: 1, attack: 8.5, beat_stretch: 20
      sleep sample_duration :loop_drone_g_97
    end
  end
end

define :rand_piano do |repeats|
  use_synth :piano
  with_fx :echo, decay: 1, mix: 0.7 do
    repeats.times do
      play rrand(0,127), amp: rrand(0.5, 1), sustain: rrand(0.25, 2.25)
      sleep rrand(0.125, 1.0)
    end
  end
end

define :dark_drum do |repeats|
  repeats.times do
    sample :drum_bass_hard, amp: 3, attack: 0.1, beat_stretch: 2
    sleep 10
  end
end


rand_piano 10
sleep 1
rand_piano 20
sleep 5
dark_drum 5







