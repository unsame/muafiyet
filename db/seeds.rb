# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create( username: "bsaral", password: "1234", password_confirmation: "1234",role: "guest")

User.create( username: "ayten", password: "1234", password_confirmation: "1234",role: "admin")

Anket.create( answer: "EVET")

Anket.create( answer: "HAYIR")


