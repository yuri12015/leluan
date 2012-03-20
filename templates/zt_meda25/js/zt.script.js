window.addEvent('load', function(){

	var StyleCookie = new Hash.Cookie('ZTMeda17StyleCookieSite');
	var settings = { colors: '' };
	var style_1, style_2, style_3;
	
	if($('ztcolor1')){$('ztcolor1').addEvent('click', function(e) {
		e = new Event(e).stop();
		if (style_2) style_2.remove();
		new Asset.css(ztpathcolor + 'default.css', {id: 'default'});
		style_2 = $('default');
		settings['default'] = ztpathcolor + 'default.css';
		StyleCookie.empty();
		StyleCookie.extend(settings);
	});}

	
	if($('ztcolor2')){$('ztcolor2').addEvent('click', function(e) {
		e = new Event(e).stop();
		if (style_1) style_1.remove();
		new Asset.css(ztpathcolor + 'blue.css', {id: 'blue'});
		style_1 = $('blue');
		settings['colors'] = ztpathcolor + 'blue.css';
		StyleCookie.empty();
		StyleCookie.extend(settings);
	});}

	
	if($('ztcolor3')){$('ztcolor3').addEvent('click', function(e) {
		e = new Event(e).stop();
		if (style_3) style_3.remove();
		new Asset.css(ztpathcolor + 'green.css', {id: 'green'});
		style_3 = $('green');
		settings['colors'] = ztpathcolor + 'green.css';
		StyleCookie.empty();
		StyleCookie.extend(settings);
	});}

});

function ZTmakeEqualHeight(divs) {
	if(!divs || divs.length < 2) return;
	var maxh = 0;
	divs.each(function(el, i){
		if($(el)) {
			var ch = $(el).getCoordinates().height;
			maxh = (maxh < ch) ? ch : maxh;
		}
	},this);
	divs.each(function(el, i){
		if($(el)) {
			$(el).setStyle('min-height', maxh- ($(el).getStyle('padding-top').toInt()) - ($(el).getStyle('padding-bottom').toInt()));
		}
	},this);
}
window.addEvent('load', function () {
	ZTmakeEqualHeight(['zt-c-left','zt-c-content','zt-c-right']);
});
