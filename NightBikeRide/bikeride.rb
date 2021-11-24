########### PARAMETERS
my_bpm = 60
myamp = [0.25, 0.3, 0.35, 0.4]#@BACKGROUND
note_bg_list = [40, 42.5, 45, 47.5]#@BACKGROUND
amp_array = [1.1, 1.2, 1.3, 1.4, 1.5, 1.6] #@BASS
start = 50#@WINDWEHEN
use_random_seed 42#@WINDWEHEN
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

############ BASS

sleep 10

live_loop :hard_bass do
  sample :bd_mehackit
  sleep 0.5
end

sleep 15

4.times do
#live_loop :soft_bass do
  4.times do
    with_fx :ping_pong do
      with_fx :gverb do
        sample :bd_mehackit, amp: 0.7, rate: 1.2
        sleep 0.1
      end
    end
  end

  4.times do
    2.times do
      sample :bd_mehackit, rate: 1.1
      sleep 0.5
    end
  end

  with_fx :echo do
    6.times do
      sample :bd_mehackit, rate: amp_array.tick, amp: amp_array.tick
      sleep 0.1
    end
  end

end

sleep 1

live_loop :windwehen do

  interval = [rrand(5,10), rrand(0,5)]
  x = [0,1]
  y = [1,0]

  use_synth :hollow
    play start, sustain: 5
    play start+interval[x.tick], sustain: 5
    sleep 4.75
    play start+interval[x.tick], sustain: 4
    play start-interval[y.tick], sustain: 4
    play start-20, sustain: 7.25
    sleep 3.75
    play start+interval[y.tick], sustain: 3.5
    play start-interval[x.tick], sustain: 3.5
    sleep 3.5
end
