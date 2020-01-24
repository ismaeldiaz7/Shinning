Shinning = "C:/Users/ismael_diaz/Documents/Audacity/The Shining - Bat.wav"
Hallorann = "C:/Users/ismael_diaz/Documents/Audacity/The Shining scene - Hallorann.wav"
Shinning2 = "C:/Users/ismael_diaz/Documents/Audacity/The Shining - Bat Scene2.wav"
Hallorann2 = "C:/Users/ismael_diaz/Documents/Audacity/The Shining scene - Hallorann2.wav"


use_bpm 110
sample Shinning, amp: 5
sleep 33
with_fx:echo do
  sample Shinning2, amp: 4
end
sleep 5
live_loop:Amry do
  12.times do
    with_fx:tremolo do
      use_synth :fm
      play :A2, amp: 5
      sleep 1.5
      play :A2, amp: 5
      sleep 0.5
      play :C3, amp: 5
      sleep 0.75
      play :A2, amp: 5
      sleep 0.75
      play :G2, amp: 5
      sleep 0.5
      play :F2, amp: 5
      sleep 2
      play :E2, amp: 5
      sleep 2
    end
  end
  stop
end
sleep 16
live_loop:drums do
  24.times do
    with_fx :tremolo do
      sample :drum_heavy_kick, amp: 5
      sleep 1
    end
  end
  stop
end
sleep 15
live_loop:cymbal do
  17.times do
    sample :drum_cymbal_closed
    sleep 1
  end
  stop
end
sample Hallorann, amp: 3