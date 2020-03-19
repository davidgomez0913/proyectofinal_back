# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "David", email:"dafergo95@hotmail.com", password_digest: "123456")
Event.create(name: "Tributo al sol", category: "Concierto", fecha_hora: "2020-10-16T20:00:00", quota: 500, image: "https://cdn2-img.pressreader.com/pressdisplay/docserver/getimage.aspx?regionKey=rheklcZ9R5uvYSNNOznHqg%3D%3D", user_id: 1 )
