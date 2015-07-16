# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
u1 = User.create({
	name: "Eduardo"
	})

u2 = User.create({
	name: "AliasAndy"
	})

p1 = Post.create({
	title: "Original Post Name 1",
	content: "Beautiful Content",
	author: "An Inspiring Producer of Identity Porn"
	})

p2 = Post.create({
	title: "Original Post Name 2",
	content: "Beautiful Content",
	author: "An Inspiring Producer of Identity Porn"
	})

p3 = Post.create({
	title: "Original Post Name 3",
	content: "Beautiful Content",
	author: "An Inspiring Producer of Identity Porn"
	})

t1 = Tag.create(name: 'this is me')
t2 = Tag.create(name: 'this isnt me!')
t3 = Tag.create(name: 'i aspire to be this')
t4 = Tag.create(name: 'fb like-worthy')
t5 = Tag.create(name: 'omg')

p1.tags << t1
p1.tags << t2

p2.tags << t3
p2.tags << t4
p2.tags << t2

p3.tags << t2
p3.tags << t4
p3.tags << t5

u1.posts << p1
u1.posts << p2
u2.posts << p3
