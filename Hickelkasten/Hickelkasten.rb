define :ambient_loop do
  i = 0
  amp = 0.3
  
  in_thread do
    live_loop :slick_tick do
      use_synth :fm
      with_fx :reverb, mix: 1, room: 1 do
        while i >= 0 do
            if i % 10 == 0
              play (scale :f3, :minor_pentatonic, num_octaves: 2).tick, amp: amp, release: 0.5
              sleep 0.25
            else
              play (scale :f3, :minor_pentatonic, num_octaves: 1).tick, amp: amp, release: 0.5
              sleep 0.25
            end
            
            i +=1
          end
        end
      end
    end
    
    
    
    in_thread do
      live_loop :bg do
        use_synth :fm
        with_fx :reverb, mix: 1, room: 1 do
          play [(chord :Ab, :major7), (chord :Db, :major7), (chord :Bb, :minor7), (chord :Eb, '7')].ring.tick, attack: 1, release: 1, amp: 0.1
          sleep 1
        end
      end
    end
    
  end
  
  
  ambient_loop
  
  
  