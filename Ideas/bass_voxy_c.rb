x = :bass_voxy_c

live_loop :bg do
  with_fx :ping_pong do
    sample x, rate: rrand(-0.5,0.5), amp: 1
    sleep (sample_duration x)
  end
end