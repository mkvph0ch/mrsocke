live_loop :my do
  rep = rrand(4,8)
  rep.times do
    sample :bass_drop_c, amp: 0.35, rate: -1
    sleep 0.15
  end
  sleep 2.15
  rep.times do
    sample :bass_drop_c, amp: 0.35
    sleep 0.15
  end
  sleep 5*(sample_duration :bass_drop_c)
end

live_loop :lopo1 do
  sample :drum_heavy_kick
  sleep 0.75
end

live_loop :lopo2 do
  sample :drum_snare_hard, amp: 0.3, rate: rrand(-0.7, -1)
  sleep 1.5
  #sample :drum_snare_soft, amp: 0.3, rate: 0.8
  #sleep 0.75
end

live_loop :lopo3 do
  sleep 0.5
  sample :drum_bass_hard
  sleep 0.5
end