define :bass_bg do
  
  rep = 1
  rep.times do
    
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
    sleep rep*(sample_duration :bass_drop_c)
  end
  
end

glob_sleep = 1

define :myring do
  16.times do
    use_synth :dtri
    play scale(40, :major_pentatonic).choose, amp: 0.8, release: 0.5 if spread(11, 16).tick
    sleep 0.25
  end
end

var = 0
live_loop :test1 do
  use_synth :blade
  test= [method(:myring), method(:bass_bg)]
  test.map { |method| method.call  }
  sleep glob_sleep
  var= var+1
end
