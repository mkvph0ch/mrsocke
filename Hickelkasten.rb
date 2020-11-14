define :ambient_loop do
  live_loop :arp2 do
    use_synth :fm
    with_fx :reverb, mix: 1, room: 1 do
      play (scale :f3, :minor_pentatonic, num_octaves: 1).tick, amp: 0.15, release: 0.5
      sleep 0.25
    end
  end
end

ambient_loop
