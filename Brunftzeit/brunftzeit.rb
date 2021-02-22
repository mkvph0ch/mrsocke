i=1
n=8

live_loop :bg do
  use_synth :dtri
  play scale(40, :major_pentatonic).choose, amp: 0.8, release: 0.5 if spread(11, 16).tick
  sleep 0.25
end

live_loop :drums do
  
  if i%2 == 0
    
    1.times do
      sleep 0.5
      a1=rrand(0.8,1)
      print(a1)
      sample :drum_bass_hard, amp: a1
      sleep 0.25
      a2=rrand(0.5,0.7)
      print(a2)
      sample :drum_bass_hard, amp: a2
      sleep 0.3
      a3=rrand(0.5,0.7)
      print(a3)
      with_fx :ping_pong do
        with_fx :krush, mix: 0.75 do
          sample :drum_bass_hard, amp: a3#, rate: 0.5
          play 45, amp: 0.2
          sleep 0.5
        end
        sample :drum_bass_hard, amp: a1
        sleep 0.75
      end
      
    end
    
  else
    in_thread do
      
      n.times do
        sample :drum_heavy_kick
        sleep 0.75
      end
      
    end
    
    in_thread do
      
      n.times do
        sample :drum_snare_hard, amp: 0.3, rate: rrand(-0.7, -1)
        sleep 1.5
      end
      
    end
    
    (n-2).times do
      sleep 0.5
      sample :drum_bass_hard
      sleep 0.5
    end
    
  end
  
  i=i+1
  
end

live_loop :bass_bg do
  
  rep = rrand(6,16)
  sleep rep*(sample_duration :bass_drop_c)
  
  with_fx :panslicer, mix: 1, phase: 5, invert_wave: 1, wave: 3 do
    
    rep.times do
      sample :bass_drop_c, amp: 0.35, rate: -1
      sleep 0.15
    end
  end
  
  sleep 2.15
  
  with_fx :panslicer, mix: 1, phase: 5, invert_wave: 0, wave: 3 do
    
    rep.times do
      sample :bass_drop_c, amp: 0.35
      sleep 0.15
    end
  end
  
end

