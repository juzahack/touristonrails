# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Paolo", surname: "Rossi", email: "paolo@rossi.it", password: "esempio", password_confirmation: "esempio")
User.create(name: "Paolo", surname: "Bianchi", email: "paolo@bianchi.it", password: "esempio", password_confirmation: "esempio")

Activity.create(name: "Museo civico", kind: "cultur", description: "Visita xx")
Activity.create(name: "Ristorante", kind: "eat", description: "Mangia xy")