#!/usr/bin/env moon

{:render_html} = require "lapis.html"

-- FIXME: XHTML, because it’s better, because.

page = (f) ->
	'<?xml version="1.0" encoding="utf-8"?>\n' ..
	'<?xml-stylesheet href="enclave.css"?>\n' ..
	"<!DOCTYPE HTML>\n" ..
	render_html ->
		html {
			lang: "fr"
			"xml:lang": "fr"
			xmlns: "http://www.w3.org/1999/xhtml"
		}, ->
			head ->
			body ->
				raw render_html f

print page ->
	header class: "header", ->
		div class: "hero-body", ->
			div class: "container", ->
				h1 class: "title is-1", ->
					raw "Projet Enclave <sup>"
					span class: "tag is-danger is-large", "(nom temporaire)"
					raw "</sup>"

				h2 class: "subtitle is-3", "Un projet de vie alternatif, écologique et raisonné."

	section class: "section hero is-secondary", ->
		div class: "container hero-body content", ->
			p class: "subtitle is-5", [[
				L’Enclave est un projet de cohabitation responsable à l’échelle d’un hameau.
				Le projet se veut écologique, démocratique, autogéré, autonome et scientifique.
			]]

	-- FIXME: add icons or something
	section class: "section hero is-primary", ->
		div class: "container", ->
			div class: "columns is-multiline is-gapless has-text-centered", ->
				a href: "#autonomie", class: "tile column is-one-third", ->
					div class: "title is-4", "Autonomie"
				a href: "#vie-en-communaute", class: "tile column is-one-third", ->
					div class: "title is-4", "Vie en communauté"
				a href: "#ecologie", class: "tile column is-one-third", ->
					div class: "title is-4", "Démocratie"
				a href: "#technologie", class: "tile column is-one-third", ->
					div class: "title is-4", "Écologie"
				a href: "#democratie", class: "tile column is-one-third", ->
					div class: "title is-4", "Technologie"
				a href: "#prestige", class: "tile column is-one-third", ->
					div class: "title is-4", "Prestige"

	-- FIXME: Add illustrations on alternating sides, AND *THAT* IS AN ORIGINAL THOUGHT
	section class: "section hero is-light", id: "autonomie", ->
		div class: "container", ->
			div class: "content columns", ->
				div class: "column is-3"
				div class: "column is-9", ->
					h4 class: "title is-3", "Autonomie"

					p [[
						L’autonomie (la vie en autarcie ou s’approchant) est un moyen pour ne plus être dépendant du système capitaliste pour les besoins vitaux (se nourrir, se loger).
						Nous pensons que cela est nécessaire pour ne plus être contraint à vivre une vie de salariat, qui force les gens faire un travail aliénant.
					]]

					p [[
						Nous ne pensons cependant pas que l’argent est un problème en soit, et nous ne souhaitons pas vivre sans argent, mais nous n’en utiliserons pas entre nous.
						De plus, malgré notre autonomie nous conserverons des interactions fortes avec le monde extérieur.
					]]


	section class: "section hero", id: "vie-en-communaute", ->
		div class: "container", ->
			div class: "content columns", ->
				div class: "column is-9", ->
					h4 class: "title is-3", "Vie en communauté"

					p [[
						La vie en communauté a plusieurs avantages : réduire des coûts (chauffage, terrain, transports, …) et factoriser le travail (conception de l’habitat par exemple).
						Là où la vie en autarcie serait très contraignante seul (car extrèmement chronophage), elle devient envisageable à plusieurs (surtout si le groupe dépasse un certain seuil) car les tâches sont réparties.
						Seul, la moindre erreur ou le moindre problème peut devenir insurmontable (ex: maladie, accident, mauvaise récolte, mauvais choix…), le groupe est bien plus résilient, chacun prend soin des autres.
					]]
				div class: "column is-3"

	section class: "section hero is-light", id: "democratie", ->
		div class: "container", ->
			div class: "content columns", ->
				div class: "column is-3"
				div class: "column is-9", ->
					h4 class: "title is-3", "Démocratie"

					p [[
						La démocratie est un mode de prise de décision prenant en compte les intérêts de chacun.
						Cela respecte les individus, leurs avis et points de vue, avec un rapport de force d’égal-à-égal.
						De plus, la démocratie permet de faire connaître l’avis de chacun, basé sur des connaissances ou des cultures différentes.
						Pour toutes ces raisons, nous pensons que la démocratie est nécessaire au cœur du projet.
					]]

	section class: "section hero", id: "ecologie", ->
		div class: "container", ->
			div class: "content columns", ->
				div class: "column is-9", ->
					h4 class: "title is-3", "Écologie"

					p [[
						L’écologie n’est qu’un moyen : protéger l’environnement c’est se protéger nous-mêmes.
						Si notre environnement est menacé, notre nourriture l'est également, et donc par conséquent notre santé, notre mode de vie, notre avenir en tant qu’espèce.
						Notre mode de vie, plus simple, permet de réduire drastiquement notre empreinte et se place dans la mouvance de décroissance.
					]]
				div class: "column is-3"

	section class: "section hero is-light", id: "technologie", ->
		div class: "container", ->
			div class: "content columns", ->
				div class: "column is-3"
				div class: "column is-9", ->
					h4 class: "title is-3", "Technologie"
					p [[
						La technologie a pris une grande place dans notre quotidien.
						Que ce soit pour communiquer, s’informer ou se divertir, nous utilisons de l’électronique.
						Tout ceci est du confort auquel nous ne souhaitons pas renoncer.
						Notre projet n’est pas de se séparer de tout ceci, mais uniquement de l’apprécier de manière responsable.
					]]

					p [[
						De plus nous pensons que la communication entre les personnes, telle que permise par Internet, est salutaire.
						Ce serait une erreur de s'en priver : communiquer sur ce que l'on fait, nos réussites et nos échecs, et même simplement notre quotidien est important.
						Il faut montrer aux gens qu'une alternative est possible.
					]]

	section class: "section hero", id: "prestige", ->
		div class: "container", ->
			div class: "content columns", ->
				div class: "column is-9", ->
					h4 class: "title is-3", "Prestige"

					p [[
						Notre démarche a pour objectif de montrer un exemple.
						Nous souhaions créer un lieu agréable à vivre, présentable au plus grand nombre comme une alternative crédible à nos sociétés.
					]]
				div class: "column is-3"

	section class: "section hero is-primary", ->
		div class: "container", ->
			h2 class: "title is-1", ->
				raw "Une Commune pour le XXI<sup>e</sup> siècle"
			p class: "tag is-danger is-large", "FIXME: mettre en commun pour avoir plus"
			p class: "tag is-danger is-large", "FIXME: plus loin que beaucoup de communes, parce que cohabitation"
			p class: "tag is-danger is-large", "FIXME: cohabitation + auto-construction = nouvelles opportunités"

	section class: "section hero is-light", ->
		div class: "container", ->
			h2 class: "title is-1", "Une gestion collective des ressources"
			div class: "columns", ->
				div class: "column is-6", ->
					h3 class: "title is-3", "Énergie"
					div class: "content", ->
						ul ->
							li " le Soleil et le vent"
							li " bois (backup)"
							li " biomasse"
							li " pas konsomer (kom 1 retard)"
				div class: "column is-6", ->
					h3 class: "title is-3", "Alimentation"
					ul ->
						li " permaculture, duh"
						li " p’tet d’autres choses dans l’futur, duh (hydroponie, aquaponie, aéroponie, n-dimensional-ponie)"
			div class: "columns", ->
				div class: "column is-6", ->
					h3 class: "title is-3", "Eau"
					div class: "content", ->
						ul ->
							li "sources : rivières / puits / pluie"
				div class: "column is-6", ->
					h3 class: "title is-3", "Finances"
					div class: "content", ->
						ul ->
							li " l’argent c’est une ressource commune"
							li " maxer farmer l'argent à plusieurs c facile (ex: investissements comme l'achat de bâtiments ou d'appartements à louer, décidé collectivement)"
							li " acheter du matériel (serveurs, outils, véhicule, …) et des matériaux (si on ne trouve pas en recyclage)"
							li " impôts/taxes"
			div class: "columns", ->
				div class: "column is-6", ->
					h3 class: "title is-3", "Température"
					div class: "content", ->
						ul ->
							li " le soleil est notre ami"
							li " mais le bois aussi (mais quand même un peu moins)"
							li " et les serveurs aussi (comme nous ils ont une âme)"

							li " le sol aussi, mais que quand le soleil nous aime plus"
				div class: "column is-6", ->
					h3 class: "title is-3", "Déchets"
					div class: "content", ->
						ul ->
							li "recyclage"
							li "recycler = plastiques, métaux, verre, bois en grosses quantités"
							li "nettoyer l’eau parce qu’on est des gens propres qui salissons pas l’eau d’Earth-chan"


	section class: "section hero is-white", ->
		div class: "container", ->
			h2 class: "title is-1", "Gouvernance"
			h3 class: "subtitle is-3", "Démocratie directe et à petite échelle"
			div class: "content", ->
				ul ->
					li class: "tag is-danger is-large", " FIXME: trouver la forme que cela doit prendre (association, entreprise, groupement d'intérêts, ...)"
					li ->
						p "décisions à l’unanimité, parce que le projet ne doit pas devenir un fardeau pour ses membres"
						p class: "tag is-danger is-large", "FIXME: Exceptions?"
					li "les ressources mises en commun ne doivent pas être volées aux individus"

	section class: "section hero is-light", ->
		div class: "container", ->
			h2 class: "title is-1", "Un projet dans le temps"
			div class: "timeline", ->
				div class: "timeline-header", ->
					div class: "tag is-medium is-primary", "Prospection"
				div class: "timeline-item", ->
					div class: "timeline-marker", ->
					div class: "timeline-content", ->
						p class: "heading", "Mars 2018"
						p "Apprendre de l’expérience des projets similaires."
						p "Recruter de nouvelles personnes dans le projet pour enrichir sa communauté."
						p "Se former et expériementer pour se familiariser avec des méthodes ou technologies utiles au projet."
				div class: "timeline-item", ->
					div class: "timeline-marker", ->
					div class: "timeline-content", ->
						p class: "heading", "Juillet 2018"
						p "Parcourir le pays pour trouver un terrain adapté."
				div class: "timeline-header", ->
					div class: "tag is-medium is-primary", "Préparation"
				div class: "timeline-item", ->
					div class: "timeline-marker", ->
					div class: "timeline-content", ->
						p class: "heading", "Mars 2019"
						p "Obtention d’un terrain constructible."
				div class: "timeline-header", ->
					div class: "tag is-medium is-primary", "Construction"
				div class: "timeline-item", ->
					div class: "timeline-marker", ->
					div class: "timeline-content", ->
						p class: "heading", "Mars 2020"
						p "Auto-construction du bâtiment principal du projet."
				div class: "timeline-header", ->
					div class: "tag is-medium is-primary", "Expansion"
				div class: "timeline-item", ->
					div class: "timeline-marker", ->
					div class: "timeline-content", ->
						p class: "heading", "Mars 2021"
						p "Documenter les réussites et échecs du projet."
				div class: "timeline-item", ->
					div class: "timeline-marker", ->
					div class: "timeline-content", ->
						p class: "heading", "Le futur et au delà"
						p "Développer de nouveaux outils écologiques pour produire de l’énergie, de la nourriture, etc."

	section class: "section hero is-primary", ->
		div class: "container", ->
			h2 class: "title is-1", "Rejoindre le projet"
			div class: "content", ->
				p [[
					Afin de réduire les frictions dans le groupe, rejoindre le projet se fait après une période d’essai de 6 mois.
					Les membres actuels doivent alors valider à l’unanimité l’intégration d’une nouvelle personne dans le projet.
				]]
				p [[
					Pendant les 6 mois de la période d’essai, des activités sociales ou des travaux sur l’Enclave seront prévus, pour prendre l’habitude de travailler ou de vivre ensemble.
				]]
				p class: "tag is-danger is-large", "FIXME: Où envoyer les candidatures."
				p class: "tag is-danger is-large", "FIXME: Proposer ses idées, parce que. \\o/"

	footer class: "footer", ->
		div class: "container", ->
			p class: "tag is-danger is-large", "FIXME: Mentions légales."
			p class: "tag is-danger is-large", "FIXME: Droits sur la page du site."

