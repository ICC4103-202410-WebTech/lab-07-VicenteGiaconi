#  This file should ensure the existence of records required to run the application in every environment (production,
#  development, test). The code here should be idempotent so that it can be executed at any point in every environment.
#  The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

#  Example:

#    ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#      MovieGenre.find_or_create_by!(name: genre_name)
#    end

PostTag.delete_all
Tag.delete_all
Post.delete_all
User.delete_all

User.create!(
    name: 'Luke Skywalker',
    email: 'l.skywalker@starwars.reb',
    password: 'MayTheForceBeWithYou'
)

User.create!(
    name: 'Darth Vader',
    email: 'd.vader@starwars.emp',
    password: 'IAmYourFather'
)

User.create!(
    name: 'Boba Fett',
    email: 'b.fett@starwars.boun',
    password: 'IMissMyDad'
)

User.create!(
    name: 'Kylo Ren',
    email: 'k.ren@starwars.1ord',
    password: 'BenSwolo'
)

User.create!(
    name: 'Han Solo',
    email: 'h.solo@starwars.reb',
    password: 'MyleniumFalcon'
)

Post.create!(
    title: "I am fast",
    content: "Fast as f**k boiii",
    user_id: User.find_by(name:"Han Solo").id,
    published_at: '2017-03-11 09:00:00',
    answers_count: 3,
    likes_count: 200304
)

Post.create!(
    title: "Sad day for the rebelion",
    content: "Miss you Chewey",
    user_id: User.find_by(name:"Han Solo").id,
    published_at: '2018-05-15 11:00:00',
    answers_count: 50,
    likes_count: 123415
)

Post.create!(
    title: "Dominating the galaxy",
    content: "Damn boy, this star goes pew-pew",
    user_id: User.find_by(name:"Darth Vader").id,
    published_at: '2019-07-20 13:00:00',
    answers_count: 14905,
    likes_count: 5732627
)

Post.create!(
    title: "Looking for my son",
    content: "I thought I burned him on Mustafar",
    user_id: User.find_by(name:"Darth Vader").id,
    published_at: '2020-09-25 15:00:00',
    answers_count: 1,
    likes_count: 6
)

Post.create!(
    title: "Lost in Mos Esly",
    content: "Just woke up, where are my clothes?",
    user_id: User.find_by(name:"Boba Fett").id,
    published_at: '2021-11-29 17:00:00',
    answers_count: 4,
    likes_count: 13256
)

Post.create!(
    title: "New boss around",
    content: "Im the new mayor on Mos Esly, pretty exited right now",
    user_id: User.find_by(name:"Boba Fett").id,
    published_at: '2022-01-03 19:00:00',
    answers_count: 903,
    likes_count: 302815
)

Post.create!(
    title: "Im better",
    content: "My gun is bigger @Darth Vader",
    user_id: User.find_by(name:"Kylo Ren").id,
    published_at: '2023-03-08 21:00:00',
    answers_count: 13415,
    likes_count: 394198
)

Post.create!(
    title: "Better blade",
    content: "Three blades are better than one",
    user_id: User.find_by(name:"Kylo Ren").id,
    published_at: '2024-05-12 23:00:00',
    answers_count: 35896,
    likes_count: 5889751
)

Post.create!(
    title: "New friends",
    content: "Just met a green goblin, wants to teach me something called the force",
    user_id: User.find_by(name:"Luke Skywalker").id,
    published_at: '2025-07-17 01:00:00',
    answers_count: 1847107,
    likes_count: 5847185
)

Post.create!(
    title: "Easy win team",
    content: "Just dropped a bomb on the Death Star, @Darth Vader gonna cry",
    user_id: User.find_by(name:"Luke Skywalker").id,
    published_at: '2026-09-21 03:00:00',
    answers_count: 18571,
    likes_count: 45258875
)

Tag.create!(
    name: "badguy"
)

Tag.create!(
    name: "goodguy"
)

Tag.create!(
    name: "prouddad"
)

Tag.create!(
    name: "rebel"
)

Tag.create!(
    name: "teamred"
)

PostTag.create!(
    post_id: Post.find_by(title:"Dominating the galaxy").id,
    tag_id: Tag.find_by(name:"teamred").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Dominating the galaxy").id,
    tag_id: Tag.find_by(name:"badguy").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Looking for my son").id,
    tag_id: Tag.find_by(name:"prouddad").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Sad day for the rebelion").id,
    tag_id: Tag.find_by(name:"rebel").id
)

PostTag.create!(
    post_id: Post.find_by(title:"I am fast").id,
    tag_id: Tag.find_by(name:"goodguy").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Sad day for the rebelion").id,
    tag_id: Tag.find_by(name:"rebel").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Lost in Mos Esly").id,
    tag_id: Tag.find_by(name:"badguy").id
)

PostTag.create!(
    post_id: Post.find_by(title:"New boss around").id,
    tag_id: Tag.find_by(name:"badguy").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Im better").id,
    tag_id: Tag.find_by(name:"badguy").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Better blade").id,
    tag_id: Tag.find_by(name:"teamred").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Im better").id,
    tag_id: Tag.find_by(name:"teamred").id
)

PostTag.create!(
    post_id: Post.find_by(title:"New friends").id,
    tag_id: Tag.find_by(name:"goodguy").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Easy win team").id,
    tag_id: Tag.find_by(name:"goodguy").id
)

PostTag.create!(
    post_id: Post.find_by(title:"Im better").id,
    tag_id: Tag.find_by(name:"rebel").id
)