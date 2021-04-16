n = 10
lpf = 80
test_sleep = 0.25
test_amp = 0.8
sample1 = :glitch_bass_g
sample2 = :drum_cymbal_hard
sample3 = :bd_zome


# Fading in and out a sample
# use_bpm 120
#
# live_loop :fade_inout_amen do
#
#   vol = (line 0, 1, inclusive: true, steps: 24).mirror
#
#   s = sample :loop_amen, beat_stretch: 4, amp: vol.tick
#   puts "---------- Vol 1: #{vol.look} ----------"
#   control s, amp_slide: 4, amp: vol.tick
#   puts "---------- Vol 2: #{vol.look} ----------"
#   sleep 4
# end

# Fading in and out a synth pattern
# use_bpm 120
#
# live_loop :fade_inout_synth do
#   vol = (line 0, 1, inclusive: true, steps: 125).mirror
#   notes = (scale :e3, :minor_pentatonic, num_octaves: 2).shuffle
#   s = synth :dtri, cutoff: 70, note: :e3, sustain: 8, release: 0, amp: vol.tick(:v)
#   puts "---------- Vol 1: #{vol.look(:v)} ----------"
#   32.times do
#     control s, note: notes.tick, note_slide: 0.005, amp_slide: 0.125, amp: vol.tick(:v)
#     puts "---------- Vol 1: #{vol.look(:v)} ----------"
#     sleep 0.25
#   end
# end

# with_fx :wobble, phase: 1, phase_slide: 10 do |e|
#   use_synth :dsaw
#   play 50, release: 10
#   control e, phase: 0.025
# end

# use_bpm 220
# #define
# a = 50
# b = 49.95
# myamp = [0.35, 0.4, 0.45, 0.5]
#
# in_thread do
#   use_synth :hoover
#   4.times do
#     play a=a-1, attack: 1, release: 100, amp: myamp.tick
#     play b=b-1, attack: 1, release: 100, amp: myamp.tick
#     #play 80, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
#     #play 79.95, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
#     sleep 10
#   end
# end

# live_loop :myloop2 do
#   sample :loop_garzul, rate: 0.2, amp: 1
#   sample :loop_garzul, rate: 0.21
#
#   #play 80, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
#   #play 79.95, amp: [1, 0.8, 0.5, 0.8].tick, release: 5
#   sleep sample_duration :loop_garzul
# end
