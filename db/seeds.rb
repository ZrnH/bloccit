require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all

Post.find_or_create_by(title: "fakeTitlehaha", body: "words words wordswords")

#Comment.find_or_create_by(posts: Unique_Post.id, body: "body body body body")

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
