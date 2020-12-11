define :chord_player do |root| #repeats|
  1.times do
    play chord(root, :minor), attack: 0.5, release: 0, rate: -0.1
  end
end
in_thread do
  loop do
    sample :perc_impact1, beat_stretch: 0.3, amp: 0.5
    sleep 0.3
    sample :perc_impact2, amp: 0.3, rate: -1
    sleep 0.3
  end
end
sleep 5
use_synth :prophet
with_fx :lpf, amp: 1 do
  3.times do
    chord_player :Cs
    sleep 0.3
    chord_player :Ds
    sleep 0.3
    chord_player :Fs
    sleep 0.3
    chord_player :Gs
    sleep 0.3
    chord_player :As
    sleep 0.3
    chord_player :As
    sleep 0.3
    chord_player :Gs
    sleep 0.15
    chord_player :Fs
    sleep 0.15
    chord_player :Ds
    sleep 0.3
    chord_player :Cs
    sleep 0.3
    chord_player :Ds
    sleep 0.3
    chord_player :Fs
    sleep 0.3
    chord_player :Gs
    sleep 0.3
    chord_player :As
    sleep 0.6
    chord_player :As
    sleep 0.6
    chord_player :Cs
    sleep 0.3
    chord_player :Ds
    sleep 0.3
    chord_player :Fs
    sleep 0.3
    chord_player :Gs
    sleep 0.3
    chord_player :As
    sleep 0.3
    chord_player :As
    sleep 0.3
    chord_player :Gs
    sleep 0.15
    chord_player :Fs
    sleep 0.15
    chord_player :Ds
    sleep 0.3
    chord_player :Fs
    sleep 0.3
    chord_player :Gs
    sleep 0.15
    chord_player :As
    sleep 0.15
    chord_player :Gs
    sleep 0.15
    chord_player :Fs
    sleep 0.15
    chord_player :Ds
    sleep 0.3
    chord_player :Fs
    sleep 0.6
    chord_player :Fs
    sleep 0.9
  end
end