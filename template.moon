{:render_html} = require "lapis.html"

(f) ->
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

				footer class: "footer", ->
					div class: "container", ->
						p ->
							a href: "mentions.xhtml", "Mentions légales"
						p "Page sous licence WTPFL" -- FIXME: link + full text D:

