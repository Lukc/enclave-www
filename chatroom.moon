
{:render_html} = require "lapis.html"

print require("template") headers: {
		-> link rel: "stylesheet", type: "text/css", media: "screen", href: "https://cdn.conversejs.org/css/converse.min.css"
		-> script src: "https://cdn.conversejs.org/dist/converse.min.js", ->
	}, ->
		script -> raw [[
			converse.initialize({
				authentication: 'anonymous',
				auto_login: true,
				auto_away: 300,
				auto_reconnect: true,
				message_archiving: 'always',
				use_emojione: false,
				view_mode: 'fullscreen',

				auto_join_rooms: [
					'enclave@chat.tartines.org',
				],
				bosh_service_url: 'https://bosh.linkmauve.fr',
				jid: 'anon.linkmauve.fr',
				notify_all_room_messages: [
					'enclave@chat.tartines.org',
				],
			});
		]]

