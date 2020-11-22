define :chord_player do |root| #repeats|
  1.times do
    play chord(root, :minor), release: 0.3
    sleep 0.5
  end
end
in_thread(name: :amen) do
  loop do
    sample :loop_breakbeat, rate: 0.75
    sleep sample_duration :loop_breakbeat
  end
end
use_synth :dull_bell
chord_player :Cs
sleep 0.5
chord_player :Ds
chord_player :Cs
sleep 10
use_synth :dull_bell
chord_player :Cs
sleep 0.5
chord_player :Ds
sleep chord_player :Cs
sleep 0.5
chord_player :Ds
sleep 0.5
chord_player :Cs
sleep 0.5
chord_player :Ds
sleep chord_player :Cs
sleep 0.5
chord_player :Ds
chord_player :Cs
sleep 0.5
chord_player :Ds
sleep 0.5
chord_player :Fs
sleep 0.5
chord_player :Gs
sleep 0.5
chord_player :As
sleep 0.5
chord_player :As
sleep 0.5
chord_player :Gs
sleep 0.25
chord_player :Fs
sleep 0.25
chord_player :Ds
sleep 0.5
chord_player :Cs
sleep 0.5
chord_player :Ds
sleep 0.5
chord_player :Fs
sleep 0.5
chord_player :Gs
sleep 0.5
chord_player :As
sleep 1
chord_player :As
sleep 1
chord_player :Cs
sleep 0.5
chord_player :Ds
sleep 0.5
chord_player :Fs
sleep 0.5
chord_player :Gs
sleep 0.5
chord_player :As
sleep 0.5
chord_player :As
sleep 0.5
chord_player :Gs
sleep 0.25
chord_player :Fs
sleep 0.25
chord_player :Ds
sleep 0.5
chord_player :Fs
sleep 0.5
chord_player :Gs
sleep 0.25
chord_player :As
sleep 0.25
chord_player :Gs
sleep 0.25
chord_player :Fs
sleep 0.25
chord_player :Ds
sleep 0.5
chord_player :Fs
sleep 1
chord_player :Fs
