// Активация коллапса верхнего меню materialize.css 
$( document ).ready(function(){
	$(".button-collapse").sideNav();
})

// Прилипающий блок
var StickyElement = function(node){
  var doc = $(document), 
      fixed = false,
      anchor = node.find('.sticky-anchor'),
      content = node.find('.sticky-content');
  
  var onScroll = function(e){
    var docTop = doc.scrollTop(),
        anchorTop = anchor.offset().top;
    
    console.log('scroll', docTop, anchorTop);
    if(docTop > anchorTop){
      if(!fixed){
        anchor.height(content.outerHeight());
        content.addClass('fixed');        
        fixed = true;
      }
    }  else   {
      if(fixed){
        anchor.height(0);
        content.removeClass('fixed'); 
        fixed = false;
      }
    }
  };
  
  $(window).on('scroll', onScroll);
};

var demo = new StickyElement($('#sticky'));
// Конец прилипающего блока



//---------------------------------------------------------------------------------

function add_to_cart(id)
{
	var key = 'product_' + id;
	var x = window.localStorage.getItem(key);
	x = x*1 + 1;
	window.localStorage.setItem(key, x);
	
	update_orders_input();
	update_orders_button();

}

function update_orders_input()
{
		var orders = cart_get_orders();
		$('#orders_input').val(orders);
}

function update_orders_button()
{
		var text = 'Cart (' + cart_get_number_of_items() + ')';
		$('#orders_button').val(text);
}

function cart_get_number_of_items()
{
	var cnt = 0;

	for(var i = 0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i); // получаем ключ
		var value = window.localStorage.getItem(key); // получаем значение

		if(key.indexOf('product_') == 0)
		{
			cnt = cnt + value*1;
		}
	}
	return cnt;
}

function cart_get_orders()
{
	var orders = '';

	for(var i = 0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i); // получаем ключ
		var value = window.localStorage.getItem(key); // получаем значение

		if(key.indexOf('product_') == 0)
		{
			orders = orders + key + '=' + value + ',';
		}
	}
	return orders;
}


