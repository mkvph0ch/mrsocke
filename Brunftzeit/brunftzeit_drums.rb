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
      sleep 2
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