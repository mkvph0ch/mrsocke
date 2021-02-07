x = [:elec_blup, :elec_bong, :elec_bell]
y = [:ping_pong, :wobble]

live_loop :bg do
  with_fx :ping_pong do
    sample x.choose, rate: rrand(-0.5,0.5), amp: 0.7
    sleep 2*(sample_duration x.choose)
  end
end