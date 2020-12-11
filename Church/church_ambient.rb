
live_loop :foo do
  sample :loop_garzul
  use_synth :prophet
  play choose(chord(:c1, :minor)), release: 8, cutoff: rrand(70, 130)
  sleep 8
end
#sleep 16

live_loop :bar do
  sync :foo
  use_synth :blade
  play [45, 52, 60].ring.mirror.drop(3).reverse.tick, release: 2, rate: -1
  sleep rrand(2, 6)
  play [90, 100, 74].ring.tick, attack: 0.1, release: rrand(2, 4), amp: rand
  sleep rrand(0.25, 0.75)
end


live_loop :choir1 do
  sync :foo
  sleep choose([2,4])
  sample :ambi_choir, attack: 2, rate: rrand(-1.5, -2), pan: 1, amp: 0.6
  sample :ambi_choir, rate: rrand(1.5, 2), pan: -1, amp: 0.6
  sleep choose([2,4])
end

live_loop :choir2 do
  sleep choose([2,4])
  sample :ambi_choir, rate: rrand(0.1, 0.5), pan: 1, amp: 0.6
  sample :ambi_choir, rate: rrand(-0.1, -0.5), pan: -1, amp: 0.6
  sleep choose([2,4])
end
