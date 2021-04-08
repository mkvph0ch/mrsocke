n = 10
lpf = 80
test_sleep = 0.25
test_amp = 0.8
sample1 = :glitch_bass_g
sample2 = :drum_cymbal_hard
sample3 = :bd_zome

#define
a = 60
b = 58

live_loop :myloop do
  use_synth :hoover

  #play a=a-1, release: 20, amp: 0.3
  #play b=b-1, release: 20, amp: 0.3
  #play 80, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
  #play 79.95, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
  sleep 5
end

live_loop :myloop2 do
  sample :loop_garzul, rate: 0.2, amp: 1
  sample :loop_garzul, rate: 0.21

  #play 80, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
  #play 79.95, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
  sleep sample_duration :loop_garzul
end
