# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Paolo", surname: "Rossi", email: "paolo@rossi.it", kind: :family, password: "esempio", password_confirmation: "esempio")
User.create(name: "Paolo", surname: "Bianchi", email: "paolo@bianchi.it", kind: :family, password: "esempio", password_confirmation: "esempio")

Activity.create(name: "La passeggiata del Guncina",
				category: :freetime,
				description: "Il percorso si snoda invece sulle pendici che dal quartiere Gries (fino al 1925 Comune a sé stante e nota località di cura e di soggiorno dell'impero asburgico) portano a San Genesio. ",
				cost: 0,
				weather: "sunny",
				kind: :family)

Activity.create(name: "Castel Roncolo",
				category: :cultur,
				description: "Castel Roncolo risale al XIII sec. Oltre al celebre ciclo di affreschi profani risalenti al Medioevo e a oggetti dalla vecchia armeria, si possono periodicamente ammirare mostre temporanee su temi di storia culturale.",
				cost: 10,
				weather: "sunny",
				kind: :family)

Activity.create(name: "Ristorante",
				category: :eat,
				description: "Mangia xy",
				cost: 25,
				weather: "sunny",
				kind: :family)

Activity.create(name: "Museo Archeologico dell'Alto Adige",
				category: :cultur,
				description: "Al Museo Archeologico dell’Alto Adige è possibile ammirare, sui primi tre piani, i ritrovamenti originali dell’Uomo venuto dal ghiaccio – detto anche Ötzi.",
				cost: 12,
				weather: "sunny",
				kind: :family)

Activity.create(name: "Passeggiate del Lungo Talvera",
				category: :freetime,
				description: "La città di Bolzano è attraversata dal torrente Talvera, un corso d'acqua che proviene dalla val Sarentino e lungo le cui sponde si estendono rigogliosi prati, parchi giochi, lunghe passeggiate e piste ciclabili all'avanguardia.",
				cost: 0,
				weather: "sunny",
				kind: :family)

