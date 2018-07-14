
{:render_html} = require "lapis.html"

print require("template") headers: {
		-> link rel: "stylesheet", type: "text/css", media: "screen", href: "https://cdn.conversejs.org/css/converse.min.css"
		-> script src: "https://cdn.conversejs.org/dist/converse.min.js", ->
	}, ->
		script -> raw [[
			converse.initialize({
				bosh_service_url: 'https://bosh.linkmauve.fr/',
				show_controlbox_by_default: true,
				allow_logout: false, // No point in logging out when we have auto_login as true.
				allow_muc_invitations: false, // Doesn't make sense to allow because only
											  // roster contacts can be invited
				allow_contact_requests: false, // Contacts from other servers cannot,
											   // be added and anonymous users don't
											   // know one another's JIDs, so disabling.
				authentication: 'anonymous',
				auto_login: true,
				auto_join_rooms: [
					'enclave@chat.tartines.org',
				],
				notify_all_room_messages: [
					'enclave@chat.tartines.org',
				],
				jid: 'anon.linkmauve.fr',
				keepalive: true,
				hide_muc_server: true, // Federation is disabled, so no use in
									   // showing the MUC server.
				play_sounds: true,
				show_controlbox_by_default: true,
				strict_plugin_dependencies: false,

				view_mode: 'fullscreen'
			});
		]]

