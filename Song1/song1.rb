use_bpm 180

live_loop :drums do
  3.times do
    2.times do
      sample :drum_bass_hard
      sleep 0.5
    end
    1.times do
      #sleep 0.25
      #sample :drum_snare_hard
      #sample :drum_heavy_kick
      #sleep 0.25
      sample :drum_snare_hard
      sleep 1
    end
  end
  1.times do
    with_fx :pitch_shift, pitch: [0, 0.05, 0.1, 0.15, 0.2].tick do
      2.times do
        sample :drum_heavy_kick
        sleep 0.25
        sample :drum_heavy_kick
        sleep 0.25
      end
      1.times do
        #sleep 0.25
        #sample :drum_snare_hard
        sample :drum_heavy_kick
        #sleep 0.25
        sample :drum_cymbal_pedal
        sleep 1
      end
    end
  end
end


live_loop :hihat do
  sync :drums
  2.times do
    sleep 1.5 # wäre hier 2*1.5 nicht besser als der do..end loop?
  end
  15.times do
    sample :drum_cymbal_closed, amp: 0.3, rate: [rrand(0.8,1.2),rrand(-0.8, -1.2)].tick
    sleep 0.1
  end
  3.times do
    sleep 1.5 # wäre hier 3*1.5 nicht besser als der do..end loop?
  end
end

live_loop :bass do
  use_synth :fm
  play scale(:c2, :major_pentatonic).choose, release: 1, amp: 3
  sleep [0.5, 1, 1.5].choose
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
