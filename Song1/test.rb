#n = 1
#sndolf = 1
use_bpm 220
5.times do
  sleep 4
15.times do
  sample :drum_cymbal_closed, amp: 0.3, rate: [rrand(0.8,1.2),rrand(-0.8, -1.2)].tick
  sleep 0.1
end
end
