i=1
n=10

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