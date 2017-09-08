# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "차달용", email: "cdalyong@hanmail.net",      password: "12341234", password_confirmation: "12341234", image_url: "1.png")
User.create(name: "최혜령", email: "hyeryoung0208@hanmail.com", password: "12341234", password_confirmation: "12341234", image_url: "2.png")
User.create(name: "서장원", email: "wkddnjset@naver.com",       password: "12341234", password_confirmation: "12341234", image_url: "3.png")
User.create(name: "김보성", email: "boysbelegend@paran.com",    password: "12341234", password_confirmation: "12341234", image_url: "4.png")
User.create(name: "박상우", email: "skypsw@gmail.com",          password: "12341234", password_confirmation: "12341234", image_url: "5.png")
User.create(name: "남형걸", email: "grey_pastor@naver.com",     password: "12341234", password_confirmation: "12341234", image_url: "6.png")
User.create(name: "임채민", email: "asdf@asdf.com",             password: "12341234", password_confirmation: "12341234", image_url: "7.png")
User.create(name: "서재성", email: "zxcv@zxcv.com",             password: "12341234", password_confirmation: "12341234", image_url: "8.png")
User.create(name: "채경완", email: "qwer@qwer.com",             password: "12341234", password_confirmation: "12341234", image_url: "9.png")
User.create(name: "염지혜", email: "asdfasdf@asdfasdf.com",     password: "12341234", password_confirmation: "12341234", image_url: "10.png")
User.create(name: "홍선기", email: "zxcvzxcv@zxcvzxcv.com",     password: "12341234", password_confirmation: "12341234", image_url: "11.png")
User.create(name: "박준하", email: "qwerqwer@qwerqwer.com",     password: "12341234", password_confirmation: "12341234", image_url: "12.png")

Group.create(name: "Group_1")
Group.create(name: "Group_2")
Group.create(name: "Group_3")

Event.create(group_id: 1)
Event.create(group_id: 1)
Event.create(group_id: 1)
Event.create(group_id: 2)
Event.create(group_id: 2)
Event.create(group_id: 2)
Event.create(group_id: 3)
Event.create(group_id: 3)
Event.create(group_id: 3)
Event.create(group_id: null)
Event.create(group_id: null)
Event.create(group_id: null)
Event.create(group_id: null)

Attendance.create(user_id:1 , event_id:1 )
Attendance.create(user_id:2 , event_id:1 )
Attendance.create(user_id:4 , event_id:1)
Attendance.create(user_id:5 , event_id:2 )
Attendance.create(user_id:6 , event_id:2 )
Attendance.create(user_id:5 , event_id:3 )
Attendance.create(user_id:4 , event_id:3 )
Attendance.create(user_id:6 , event_id:4 )
Attendance.create(user_id:7 , event_id:4 )
Attendance.create(user_id:8 , event_id:5 )
Attendance.create(user_id:3 , event_id:5 )
Attendance.create(user_id:12 , event_id:5 )
Attendance.create(user_id:10 , event_id:6 )
Attendance.create(user_id:9 , event_id:6 )
Attendance.create(user_id:4 , event_id:7 )
Attendance.create(user_id:5 , event_id:7 )
Attendance.create(user_id:10 , event_id:7 )
Attendance.create(user_id:11 , event_id:8 )
Attendance.create(user_id:12 , event_id:8 )
Attendance.create(user_id:4 , event_id:9 )
Attendance.create(user_id:6 , event_id:9 )
Attendance.create(user_id:7 , event_id:9 )

Membership.create(user_id:1, group_id:1)
Membership.create(user_id:1, group_id:2)
Membership.create(user_id:1, group_id:3)
Membership.create(user_id:2, group_id:1)
Membership.create(user_id:2, group_id:3)
Membership.create(user_id:4, group_id:1)
Membership.create(user_id:4, group_id:2)
Membership.create(user_id:6, group_id:1)
Membership.create(user_id:7, group_id:3)
Membership.create(user_id:8, group_id:2)




