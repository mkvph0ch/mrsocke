i=1
n=10

live_loop :drums do
  
  if i%2 == 0
    
    1.times do
      sample :drum_bass_hard
      sleep 0.25
      sample :drum_bass_hard
      sleep 0.3
      sample :drum_bass_hard
      sleep 0.5
      sample :drum_bass_hard
      sleep 1
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
  
  rep = rrand(4,8)
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

