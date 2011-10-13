// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
function have_thing(id, token) {
	// $.post('https://graph.facebook.com/me/utilization:have?thing=http://3gj2.localtunnel.com/things/' + id + '&access_token=' + token, {},
	// function(response) {
	//     if (!response || response.error) {
	//       console.log(response);
	// 		console.log(response.error);
	//     } else {
	//       alert('Post was successful! Action ID: ' + response.id);
	//     }
	//   });
	FB.api('/me/utilization:have?thing=http://3gj2.localtunnel.com/things/' + id, 'post');
}