

x = [:misc_cineboom]

live_loop :bg do
  with_fx :ping_pong do
    
    sample x.choose, rate: rrand(0.7,1.3), amp: 1
    sleep rrand(0.5,0.8)*(sample_duration x.choose)
  end
end
