i = 1
3.times do
  with_fx :gverb do
    sample :loop_garzul, beat_stretch: rrand(1, 1.5)
    use_synth :prophet
    play choose(chord(:c1, :minor)), release: 8, cutoff: rrand(70, 130)
    sleep 4
    if i == 1
      sample "/Users/mkv/Documents/dev/SonicPi/mrsocke/TB_01.flac", amp: 2
    elsif i == 2
      sample "/Users/mkv/Documents/dev/SonicPi/mrsocke/TB_02.flac", amp: 2
    elsif i == 3
      sample "/Users/mkv/Documents/dev/SonicPi/mrsocke/TB_03.flac", amp: 2
    end
    sleep 4
    i += 1
  end
  
end

define :chord_player do |root| #repeats|
  1.times do
    play chord(root, :minor), attack: 0.5, release: 0, rate: -0.1
  end
end

in_thread do
  live_loop :steady do
    sample :perc_impact1, beat_stretch: 0.3, amp: 0.5
    sleep 0.3
    sample :perc_impact2, amp: 0.3, rate: -1
    sleep 0.3
  end
end

j = 1

in_thread do
  with_fx :echo do
    
    live_loop :happyb do
      sleep 10
      if j == 1
        sample "/Users/mkv/Documents/dev/SonicPi/mrsocke/TB_04.flac", amp: 2
      elsif j == 2
        sample "/Users/mkv/Documents/dev/SonicPi/mrsocke/TB_04.flac", amp: 2, pitch: 8
      elsif j == 3
        sample "/Users/mkv/Documents/dev/SonicPi/mrsocke/TB_04.flac", amp: 4, pitch: -8
      else
        sample "/Users/mkv/Documents/dev/SonicPi/mrsocke/TB_04.flac"
      end
      j += 1
    end
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