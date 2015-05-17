# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Paolo", surname: "Rossi", email: "paolo@rossi.it", kind: :family, password: "esempio", password_confirmation: "esempio")
User.create(name: "Paolo", surname: "Bianchi", email: "paolo@bianchi.it", kind: :family, password: "esempio", password_confirmation: "esempio")

path1= Path.create(date: Date.today, place: "Bolzano", weather: "sunny", kind: :family, trip: "relax")
path2=Path.create(date: Date.today-1, place: "Merano", weather: "cloudy", kind: :couple, trip: "relax")
path3=Path.create(date: Date.today-1, place: "Renon", weather: "sunny", kind: :single, trip: "adventure")
path4=Path.create(date: Date.today-2, place: "Laives", weather: "sunny", kind: :over, trip: "adventure")

act=Activity.create([{name: "La passeggiata del Guncina",
				category: :freetime,
				description: "Il percorso si snoda invece sulle pendici che dal quartiere Gries (fino al 1925 Comune a sé stante e nota località di cura e di soggiorno dell'impero asburgico) portano a San Genesio. ",
				cost: 0,
				weather: "sunny",
				kind: :family,
				place: "Bolzano"},

				{name: "Castel Roncolo",
				category: :cultur,
				description: "Castel Roncolo risale al XIII sec. Oltre al celebre ciclo di affreschi profani risalenti al Medioevo e a oggetti dalla vecchia armeria, si possono periodicamente ammirare mostre temporanee su temi di storia culturale.",
				cost: 10,
				weather: "sunny",
				kind: :family,
				place: "Bolzano"},

				{name: "Ristorante La Cantina",
				category: :eat,
				description: "Cucina tipica altoatesina.",
				cost: 25,
				weather: "sunny",
				kind: :family,
				place: "Bolzano"},

				{name: "Museo Archeologico dell'Alto Adige",
				category: :cultur,
				description: "Al Museo Archeologico dell’Alto Adige è possibile ammirare, sui primi tre piani, i ritrovamenti originali dell’Uomo venuto dal ghiaccio – detto anche Ötzi.",
				cost: 12,
				weather: "sunny",
				kind: :family,
				place: "Bolzano"},

				{name: "Passeggiate del Lungo Talvera",
				category: :freetime,
				description: "La città di Bolzano è attraversata dal torrente Talvera, un corso d'acqua che proviene dalla val Sarentino e lungo le cui sponde si estendono rigogliosi prati, parchi giochi, lunghe passeggiate e piste ciclabili all'avanguardia.",
				cost: 0,
				weather: "sunny",
				kind: :family,
				place: "Bolzano"}])
#merano



act1=Activity.create([{name: "Passeggiata Tappeiner",
				category: :cultur,
				description: "",
				cost: 0,
				weather: "cloudy",
				kind: :couple,
				place: "Merano"},

				{name: "Ristorante Castel Fragsburg",
				category: :eat,
				description: "",
				cost: 0,
				weather: "cloudy",
				kind: :couple,
				place: "Merano"},

				{name: "Museo della Donna Evelyn Ortner",
				category: :cultur,
				description: "",
				cost: 0,
				weather: "cloudy",
				kind: :couple,
				place: "Merano"}])

#renon
act2=Activity.create([{name: "Passeggiata - Sulle tracce di Sigmund Freud",
				category: :freetime,
				description: "",
				cost: 0,
				weather: "sunny",
				kind: :single,
				place: "Renon"},

				{name: "Haidgerberhof",
				category: :eat,
				description: "",
				cost: 0,
				weather: "sunny",
				kind: :single,
				place: "Renon"},

				{name: "Museo della Apicoltura",
				category: :cultur,
				description: "",
				cost: 0,
				weather: "cloudy",
				kind: :single,
				place: "Renon"}])

				

5.times do |i|
	path1.activities<<act[i]
end

 path2.activities<<act1[0]
 path2.activities<<act1[1]
 path2.activities<<act1[2]

path3.activities<<act2[0]
path3.activities<<act2[1]
path3.activities<<act2[2]

path4.activities<<act[4]
path4.activities<<act[2]
path4.activities<<act[3]