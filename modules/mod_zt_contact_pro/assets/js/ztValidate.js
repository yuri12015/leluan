var Validate = new Class({ 
	getOptions: function(){
		return {
			validateOnBlur: true,
			errorClass: 'error',
			errorMsgClass: 'errorMessage',
			dateFormat: 'dd/MM/yy',
			onFailf: $empty,
			onSuccess: false,
			showErrorsInline: true,
			label: 'Submit'
		};
	},

	initialize: function(form, options){
		this.setOptions(this.getOptions(), options);
		
		this.form = $(form);
		this.elements = this.form.getElements('.required');
		
		this.list = [];
		
		this.elements.each(function(el,i){
			if(this.options.validateOnBlur){
				el.addEvent('blur', this.validate.bind(this, el));
			}
		}.bind(this));
		
		this.form.addEvent('submit', function(e){
			var event = new Event(e);
			var doSubmit = true;
			this.elements.each(function(el,i){
				if(! this.validate(el)){
					event.stop();
					doSubmit = false
					this.list.include(el);
				}else{
					this.list.erase(el);
				}
			}.bind(this));
			
			if(doSubmit){
				if(this.options.onSuccess){
					event.stop();
					this.options.onSuccess(this.form);
					
				}else{
					this.form.getElement('input[type=submit]').setProperty('value',this.options.label);
					e = new Event(e).stop();
					$('vehicles_list').scrollTo(0,0);	
					window.scrollTo(0,0);		
					var log = $('vehicles_list').empty().addClass('ajax-loading');		
					var url = 'modules/mod_zt_contact_pro/ajax.php'; 
					new Request.HTML({
						url: url,
						data: $('myForm'),
						method: 'post',
						update: log,
						onComplete: function(el) { 
							log.removeClass('ajax-loading');
							$$('.submit').setProperty('value', 'Submit');
							if($('check').value>0){
								Recaptcha.reload ();
							}
							checkurl = $('redirect').value;
							if(checkurl!=''){
								window.location=checkurl;
							}    
						}
					}).send(); 
				}
			}else{ 
				$empty(this.getList()); 
			}
			
		}.bind(this));
		
	},
	
	getList: function(){
		var list = new Element('ul');
		this.list.each(function(el,i){
			if(el.title != ''){
			var li = new Element('li').injectInside(list);
			new Element('label').setProperty('for', el.id).set('Text',el.title).injectInside(li);
			}
		});
		return list;
	},
	
	validate: function(el){
		var valid = true;
		this.clearMsg(el);
		switch(el.type){
			case 'text':
			case 'textarea':
			case 'select-one':
				if(el.value != ''){
					if(el.hasClass('email')){
						var regEmail = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
						if(el.value.toUpperCase().match(regEmail)){
							valid = true;
						}else{
							valid = false;
							this.setMsg(el, 'Please enter a valid email address');
						}
					}
					
					if(el.hasClass('number')){
						var regNum = /[-+]?[0-9]*\.?[0-9]+/;
						if(el.value.match(regNum)){
							valid = true;
						}else{
							valid = false;
							this.setMsg(el, 'Please enter a valid number');
						}
					}
					 
					if(el.hasClass('date')){
						var d = Date.parseExact(el.value, this.options.dateFormat);
						if(d != null){
							valid = true;
						}else{
							valid = false;
							this.setMsg(el, 'Please enter a valid date in the format: '+this.options.dateFormat.toLowerCase());
						}
					}
					
				}else{
					valid = false;
					this.setMsg(el);
				}
				break;
				
			case 'checkbox':
				if(!el.checked){
					valid = false;
					this.setMsg(el);
				}else{
					valid = true;
				}
				break;
				
			case 'radio':
				var rad = $A(this.form[el.name]);
				var ok = false;
				rad.each(function(e,i){
					if(e.checked){
						ok = true;
					}
				});
				if(!ok){
					valid = false;
					this.setMsg(rad.getLast(), 'Please select an option');
				}else{
					valid = true;
					this.clearMsg(rad.getLast());
				}
				break;
				
		}
		return valid;
	},
	
	setMsg: function(el, msg){
		if(msg == undefined){
			msg = el.title;
		}
		if(this.options.showErrorsInline){
			if(el.error == undefined){
				el.error = new Element('span').addClass(this.options.errorMsgClass).set('Text',msg).injectAfter(el);
			}else{
				el.error.setText(msg);
			}
			el.addClass(this.options.errorClass);
		}
	},
	
	clearMsg: function(el){
		el.removeClass(this.options.errorClass);
		if(el.error != undefined){
			el.error.dispose();
			el.error = undefined;
		}
	}
	
});

Validate.implement(new Options);
Validate.implement(new Events);


