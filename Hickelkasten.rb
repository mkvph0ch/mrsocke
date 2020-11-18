define :ambient_loop do
  
  in_thread do
    live_loop :slick_tick do
      cue :stick
      use_synth :fm
      with_fx :reverb, mix: 1, room: 1 do
        play (scale :f3, :minor_pentatonic, num_octaves: 1).tick, amp: 0.3, release: 0.5
        sleep 0.25
      end
    end
  end
  
  in_thread do
    live_loop :bg do
      sync :stick
      use_synth :fm
      with_fx :reverb, mix: 1, room: 1 do
        play [(chord :Ab, :major7), (chord :Db, :major7), (chord :Bb, :minor7), (chord :Eb, '7')].ring.tick, attack: 0.1, release: 1, amp: 0.1
        sleep 1
      end
    end
  end
  
end

ambient_loop


