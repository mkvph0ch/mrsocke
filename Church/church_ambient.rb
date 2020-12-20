
live_loop :foo do
  #sample :loop_garzul
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
  play [90, 100, 74].ring.tick, attack: 0.1, release: rrand(2, 4), amp: rrand(0.1,1), pan: rrand(-1,1)
  sleep rrand(0.25, 0.75)
end

live_loop :drums do
  sync :foo
  sample :drum_heavy_kick
  sample :bass_thick_c
  sleep 0.3
  sample :drum_tom_lo_hard, rate: 0.6
  sleep 1.7
  sample :drum_tom_lo_soft, rate: 0.3
  sleep 2
  sample :drum_heavy_kick, decay: 1.2
  sample :bass_drop_c, attack: 1.5, amp: 0.6, rate: 0.7
  
end


#live_loop :choir1 do
#  sync :foo
#  sleep choose([2,4])
#  sample :ambi_choir, attack: 2, rate: rrand(-1.5, -2), pan: 1, amp: 0.6
#  sample :ambi_choir, rate: rrand(1.5, 2), pan: -1, amp: 0.6
#  sleep choose([2,4])
#end

#live_loop :choir2 do
#  sleep choose([2,4])
#  sample :ambi_choir, rate: rrand(0.1, 0.5), pan: 1, amp: 0.6
#  sample :ambi_choir, rate: rrand(-0.1, -0.5), pan: -1, amp: 0.6
#  sleep choose([2,4])
#end
