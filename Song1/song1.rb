use_bpm 220
use_debug false

###############################
#FUNCTIONS
###############################
define :hihat do |n,sndolf|
  n.times do
    use_random_seed rrand(0,80)
    if sndolf == 1
      4.times do
        sample :sn_dolf
        sleep 0.2
      end
    end
    #sync :drums
    2.times do
      2.times do
        sleep 1.5 # wäre hier 2*1.5 nicht besser als der do..end loop?
      end
      15.times do
        sample :drum_cymbal_closed, amp: 0.3, rate: [rrand(0.8,1.2),rrand(-0.8, -1.2)].choose
        sleep 0.1
      end
      3.times do
        with_fx :ping_pong do
          sleep 1.5 # wäre hier 3*1.5 nicht besser als der do..end loop?
        end
    sleep 6
    end
  end
  end
end

###############################
#SONG
###############################
a = 50
b = 49.95
myamp = [0.35, 0.4, 0.45, 0.5]

sleep 1

in_thread do
  use_synth :hoover
  4.times do
    play a=a-1, attack: 1, release: 100, amp: myamp.tick
    play b=b-1, attack: 1, release: 100, amp: myamp.tick
    #play 80, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
    #play 79.95, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
    sleep 10
  end
end

sleep 40

4.times do
  sample :sn_dolf, amp: [0.7, 0.8, 0.9, 1].tick
  sleep 0.2
end

in_thread do
  100.times do
    3.times do
      2.times do
        sample :drum_bass_hard, pan:  0.05
        sleep 0.5

      end
      1.times do
        #sleep 0.25
        #sample :drum_snare_hard
        #sample :drum_heavy_kick
        #sleep 0.25
        sample :drum_snare_hard, pan:  0.05
        sleep 1
      end
    end
    1.times do
      with_fx :pitch_shift, pitch: [0, 0.05, 0.1, 0.15, 0.2].tick do
        2.times do
          sample :drum_heavy_kick, pan:  0.05
          sleep 0.25
          sample :drum_heavy_kick, pan:  0.05
          sleep 0.25
        end
        1.times do
          #sleep 0.25
          #sample :drum_snare_hard
          sample :drum_heavy_kick, pan:  0.05
          #sleep 0.25
          sample :drum_cymbal_pedal
          sleep 1
        end
      end
    end
  end
end

in_thread do
  hihat 6,0
end


3.times do
  sync :drums
  2.times do
    sample :ambi_choir, rate: rrand(-1,1), amp: 0.7, pan: -0.5
    sleep 1.5 # wäre hier 2*1.5 nicht besser als der do..end loop?
  end
  15.times do
    #sample :drum_cymbal_closed, amp: 0.3, rate: [rrand(0.8,1.2),rrand(-0.8, -1.2)].tick
    sleep 0.1
  end
  3.times do
    with_fx :ping_pong do
      sample :ambi_choir, rate: rrand(-1,1), amp: 1, pan: 0.5
      sleep 1.5 # wäre hier 3*1.5 nicht besser als der do..end loop?
    end
  end
end

in_thread do
  hihat 5,1
end

live_loop :bass do
  use_synth :fm
  with_fx :krush, mix: 0.25 do
    play scale([:c2,:c3].choose, :minor_pentatonic).tick, release: [1,1.5].choose, amp: 1.5, pan: -0.05
    sleep [0.5, 1, 1.5].choose
  end
end


sleep 60

3.times do
  sync :drums
  2.times do
    sample :ambi_choir, rate: rrand(-1,1), amp: 0.7, pan: -0.5
    sleep 1.5 # wäre hier 2*1.5 nicht besser als der do..end loop?
  end
  15.times do
    #sample :drum_cymbal_closed, amp: 0.3, rate: [rrand(0.8,1.2),rrand(-0.8, -1.2)].tick
    sleep 0.1
  end
  3.times do
    #with_fx :ping_pong do
      sample :ambi_soft_buzz, rate: rrand(-1,1), amp: 1, pan: 0.5
      sleep 1.5 # wäre hier 3*1.5 nicht besser als der do..end loop?
    #end
  end
end

#live_loop :melody do
#  if one_in(6)
#    use_transpose 2
#  else
#    use_transpose 0
#  end
#  use_synth :prophet
#  play_pattern_timed [:c4, :e4, :f4, :g4, :f4, :e4, :f4, :g4, :f4, :e4, :f4], [0.25, 0.25, 0.25, 1.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25], amp: 0.5, pan: rrand(-1,1)
#end
