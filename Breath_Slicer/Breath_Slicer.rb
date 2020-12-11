in_thread do
  
  with_fx :panslicer do
    sample :ambi_lunar_land, amp: 1.5, release: 1.25
    sleep sample_duration :ambi_lunar_land
  end
end

in_thread do
  
  with_fx :flanger do
    live_loop :ambidrone do
      
      sample :ambi_drone, amp: 1, rate: 0.5, attack: 0.75, decay: 2, release: 1.25
      sleep (sample_duration :ambi_lunar_land) - 4
      
    end
    
  end
  
end

amp = 0.5

with_fx :reverb do
  play 50, amp: amp
  sleep 0.25
  play 51, amp: amp
  sleep 0.5
  play 62, release: 3, amp: amp
  sleep 2.5
  play 51, amp: amp
  sleep 0.25
  play 50, amp: amp
end

my_fx=[:ixi_techno, :echo, :echo, :echo, :ixi_techno, :gverb, :echo, :echo, :ixi_techno, :slicer, :bitcrusher]

5.times do
  
  my_fx.each do |item|
    
    
    with_fx item do
      
      use_synth :zawa
      play 52, release: 2.5, phase: 2, amp: 0.5
      sleep 2
      
    end
    
  end
  
  
end
