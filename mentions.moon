#!/usr/bin/env moon

print require("template") ->
	header class: "section hero is-primary", ->
		div class: "container", ->
			h2 class: "title is-1", "Mentions légales"

	section class: "section", ->
		div class: "container", ->
			h4 class: "title is-3", "Directeur de la publication"
			p "Luka Vandervelden"
			p "15 rue des Roses, 67100 Strasbourg"

