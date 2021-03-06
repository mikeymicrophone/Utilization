// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(function() {
	$('#new_thing').submit(function() {
    $.post('/things', {thing: {name: $('#thing_name').val()}});
    return false;
  });
});

function share_activity_on_open_graph(fbuid, app, action, thing_id, domain) {
	FB.api('/' + fbuid + '/' + app + ':' + action + '?thing=http://' + domain + '/things/' + thing_id, 'post', function(response) {
		if (response.error) {
			console.log(response.error);
		}
	});
}

$(function() {
	$('.explanation').change(function(e) {
		$.post('/patronages', {thing_id: $(e.currentTarget).data('thing_id'), detail_text: e.currentTarget.value});
		$(e.currentTarget).val('');
	})
})
// 
// function have_thing(id) {
// 	FB.api('/me/utilization:have?thing=http://3gj2.localtunnel.com/things/' + id, 'post');
// }
// 
// function aspire_to_use_thing(id) {
// 	FB.api('/me/utilization:want_to_use?thing=http://3gj2.localtunnel.com/things/' + id, 'post');
// }
// 
// function like_thing(id) {
// 	FB.api('/me/utilization:appreciate?thing=http://3gj2.localtunnel.com/things/' + id, 'post');
// }