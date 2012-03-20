var ZTMedaSlide = new Class({
	Implements: [Events, Options],
	options:{},
	initialize:function(options){		
		this.setOptions(options);
		this.container = $(this.options.ztContainer);
		this.items = $$(this.options.items); 
		this.medaitems = $$(this.options.medaitems);
		this.itemsOverlay = $$(this.options.overlay);
		this.content = $$(this.options.content);
		this.itemHeight = this.options.itemheight;
		this.itemPadding = this.options.itempadding; 
		this.pagenav = this.options.pagenav;
		this.itemwidth = this.options.itemwidth;
		this.totalwidth = this.itemwidth + this.itemPadding;
		this.itemdisplay = this.options.itemdisplay;
        this.currentIter = 0;
		if(this.pagenav>0){
			this.pagenext = $$(this.options.pagenext);
			this.pageprev = $$(this.options.pageprev);
			this.pagenext.addEvent('click',function(){this.next(true);}.bind(this));
			this.pageprev.addEvent('click',function(){this.prev(true);}.bind(this));
		} 
        this.medaitems.each(function(item,i){
			//this.items[i].setStyles({'padding-right': this.itemPadding});
        	item.addEvent('mouseenter',function(event){
        		event = new Event(event);        		
        		event.stop();
        		this.goToByOver(i);
        	}.bind(this));
			item.addEvent('mouseleave',function(event){
				event = new Event(event);        		
        		event.stop();
        		this.leaveByOver(i);
        	}.bind(this));
        }.bind(this));  
        if(this.options.auto==1){
            this.prepareTimer();
        }
		this.container.setStyle('width', this.items.length*this.totalwidth+55+'px'); 
		this.fx = new Fx.Morph(this.container, {transition: this.options.ztTransitions,duration:800,wait:false}); 
		this.maxSlide = this.items.length - this.itemdisplay;
	},
	clearTimer:function(){
		$clear(this.timer);
	},
    prepareTimer:function(){
		this.timer = this.next.periodical(this.options.transaction, this);
	},
	goTo:function(num){    	
    	this.clearTimer();     	
    	this.slideContainer(num);    	
        this.prepareTimer();	    	
    },
    slideContainer: function(num){
		this.fx.start({'left':-num*this.totalwidth});
	},
	next:function(wait){
		if(this.currentIter==this.maxSlide){ 
			this.currentIter=0;
		}else{ 
			this.currentIter += this.currentIter<this.maxSlide ? 1 : 1-this.maxSlide;
		}
        if(wait){ 
			this.clearTimer();				
        	this.slideContainer(this.currentIter);
            if(this.options.auto==1){
                this.prepareTimer();
            }
        	return; 	
        }                  
        this.goTo(this.currentIter);   
	},
	prev: function(wait){ 
		this.currentIter += this.currentIter>0 ? -1 : this.maxSlide;
        if(wait){ 
			this.clearTimer();				
        	this.slideContainer(this.currentIter);
            if(this.options.auto==1){
                this.prepareTimer();
            }
        	return; 	
        }                  
        this.goTo(this.currentIter);  
	},
	goToByOver:function(num){ 
		this.itemsOverlay.each(function(item,j){
			if(num!=j){
				this.itemsOverlay[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.itemsOverlay[j].morph({opacity: 0});  
				this.content[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.content[j].morph({top: this.itemHeight}); 
			} else {
				this.itemsOverlay[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.itemsOverlay[j].morph({opacity: [0, 0.6]}); 
				this.content[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.content[j].morph({top: [this.itemHeight, this.itemHeight-this.content[j].offsetHeight]});
			} 
		}.bind(this)); 
	},
	leaveByOver: function(numb){ 
		this.itemsOverlay.each(function(item,j){
			if(numb!=j){
				this.itemsOverlay[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.itemsOverlay[j].morph({opacity: 0});  
				this.content[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.content[j].morph({top: this.itemHeight});  
			} else {
				this.itemsOverlay[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.itemsOverlay[j].morph({opacity: 0});  
				this.content[j].set('morph', {duration: '500', transition: Fx.Transitions.Sine.easeOut, onComplete: function(event){}});
				this.content[j].morph({top: this.itemHeight});  
			} 
		}.bind(this)); 
	} 
});
ZTMedaSlide.implement(new Events);
ZTMedaSlide.implement(new Options);
