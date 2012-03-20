var ZTScroll = new Class({
	Implements: [Events, Options],
	options:{},
	initialize:function(options){		
		this.setOptions(options);
		this.container = $(this.options.ztContainer);
		this.items = $$(this.options.items);
		this.pagenav = this.options.pagenav;
		this.itemwidth = this.options.itemwidth;
		this.itemdisplay = this.options.itemdisplay;
        this.currentIter = 0;
		if(this.pagenav>0){
			this.pagenext = $$(this.options.pagenext);
			this.pageprev = $$(this.options.pageprev);
			this.pagenext.addEvent('click',function(){this.next(true);}.bind(this));
			this.pageprev.addEvent('click',function(){this.prev(true);}.bind(this));
		} 
        if(this.options.auto==1){
            this.prepareTimer();
        }
		this.container.setStyle('width', this.items.length*this.itemwidth+'px'); 
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
		this.fx.start({'left':-num*this.itemwidth});
		this.currentIter = num;
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
	} 
});
ZTScroll.implement(new Events);
ZTScroll.implement(new Options);
