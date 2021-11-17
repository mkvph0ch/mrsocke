########### PARAMETERS
my_bpm = 60
myamp = [0.25, 0.3, 0.35, 0.4]
note_bg_list = [40, 42.5, 45, 47.5]
########### HEADER
use_bpm my_bpm
use_debug false

########### MAIN
#live_loop :main do
  live_loop :my_piano do
    use_synth :piano
    play :c, amp: 2, attack: 1, attack_level: 2, decay: 0, decay_level: 5, sustain: 0, release: 1
    sleep 5
  end

  live_loop :amen_break do
    with_fx :echo do
      with_fx :panslicer do
        sample :loop_drone_g_97, beat_stretch: 2, attack: 2, rate: -1, amp: 0.5
        sample :loop_drone_g_97, beat_stretch: 3, attack: 2, rate: -0.95, amp: 0.5
        sleep 5
      end
    end
  end

########### BACKGROUND
live_loop :bg_noise do
  with_fx :echo do
    use_synth :dark_ambience
      play note_bg_list.tick, attack: 1, release: 100, amp: myamp.tick
      play note_bg_list.tick-0.1, attack: 1, release: 100, amp: myamp.tick
      play note_bg_list.tick-10, attack: 1, release: 100, amp: myamp.tick
      sleep 10
  end
end
