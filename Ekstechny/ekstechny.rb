n = 4
lpf = 80
test_sleep = 0.25
test_amp = 0.8
sample1_amp = [1,0.60,0.80,0.60]
sample1 = :glitch_bass_g
sample2 = :drum_cymbal_hard
sample3 = :bd_zome

start_i = 10
start_n = 60-start_i

use_random_seed rrand(20, 120)
define :my_drums do
  a = [true, false, true, false, true, false].choose
  if a == true
    4.times do
      sample sample1, amp: sample1_amp.tick, lpf: lpf
      sample sample2
      sleep test_sleep
    end
  else
    4.times do
      sample sample1, amp: sample1_amp.tick, lpf: lpf
      sample sample3
      sleep test_sleep
    end
  end
end

start_n.times do
  with_bpm start_i do
    1.times do
      sample sample1, amp: test_amp, lpf: 80
      sleep test_sleep
    end
  end
  start_i = start_i + 1
end

n.times do
  16.times do
    sample sample1, amp: sample1_amp.tick, lpf: lpf
    sleep test_sleep
  end
end

n.times do

  16.times do
    sample sample1, amp: sample1_amp.tick, lpf: lpf
    sleep test_sleep
  end

  my_drums
  sample :drum_splash_soft
end

n.times do

  16.times do
    sample sample1, amp: sample1_amp.tick, lpf: lpf
    sleep test_sleep
  end

  4.times do
    sample sample1, amp: sample1_amp.tick, lpf: lpf
    sample :sn_dolf, amp: [0.4, 0.6, 0.8, 1.0].tick
    sleep 0.125
  end

  my_drums
  sample :drum_splash_soft
end

n.times do

  16.times do
    sample sample1, amp: sample1_amp.tick, lpf: lpf
    sleep test_sleep
  end

  with_fx :panslicer, mix: 1 do
    sample :misc_cineboom, amp: 3
  end

  4.times do
    sample sample1, amp: sample1_amp.tick, lpf: lpf
    sample :sn_dolf, amp: [0.4, 0.6, 0.8, 1.0].tick
    sleep 0.125
  end

  my_drums
  sample :drum_splash_soft
end

sleep 5

end_i = 10
end_n = 180-end_i

end_n.times do
  with_bpm end_i do
    1.times do
      sample sample1, amp: test_amp, lpf: 80, pan: [-1,1].tick
      sleep test_sleep
    end
  end
  end_i = end_i + 1
end

sample :drum_splash_soft

with_fx :panslicer, mix: 1 do
  sample :misc_cineboom, amp: 3
end
