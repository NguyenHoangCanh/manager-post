# 200.times.each do |n|
#     user_id = (User.first.id..User.last.id).to_a.sample
#     content = Faker::Games::LeagueOfLegends.champion

#     Post.create(
#         user_id: user_id, 
#         content: content
#     )
# end