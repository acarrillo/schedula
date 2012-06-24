function draw() 
{ 
	$("div.container").each(function() 
			{ 
			w = parseInt($(this).css("width")); 
			$($(this).children().get(0)).css("left", "" + (w - 100) + "px"); 
			sppx = parseInt($(this).attr("sppx")); 
			if((60 / sppx) > 30) 
			{ 
			$($(this).children().get(2)).attr("interval", "60"); 
			} 
			else if((3600 / sppx) > 30) 
			{ 
			$($(this).children().get(2)).attr("interval", "3600"); 
			} 
			else 
			{ 
			$($(this).children().get(2)).attr("interval", "86400"); 
			} 
			$(this).children("div.bglines").empty(); 
			pointTime = parseInt($(this).attr("pointTime")); 
			sppx = parseInt($(this).attr("sppx")); 
			interval = parseInt($(this).children("div.bglines").attr("interval")); 
			pxinterval = interval * 1.0 / sppx; 
			x = (pointTime % interval); 
			x = x * 1.0 / sppx; 
			while(0 - x + $(this).width() / 2 > 0) 
			{ 
				x = x + pxinterval; 
			} 
			for(i = 0; (pxinterval * i) / 6 - x + $(this).width() / 2 < $(this).width() - 15; i++) 
			{ 
				if((pxinterval * i) / 6 - x + $(this).width() / 2 - 15 < 0) 
				{ 
					continue; 
				} 
				if(i % 6 == 0) 
				{ 

				} 
				else 
				{ 
					$("div.bglines").append('<div class="vr" style="background-color:rgba(0, 0, 0, 0.3); left:' + Math.floor((pxinterval * i) / 6 - x - 15 + $(this).width() / 2) + 'px"></div>'); 
				} 
			} 
			$(this).find("div.timeline").each(function() 
					{ 
					w = parseInt($(this).css("width")); 
					$(this).children("div.activity").each(function() 
						{ 
						startTime = parseInt($(this).attr("startTime")); 
						endTime = parseInt($(this).attr("endTime")); 
						$(this).css("width", ((endTime - startTime) * 1.0 / sppx) + "px"); 
						$(this).css("left", (((startTime - pointTime) * 1.0 / sppx) + w / 2) + "px"); 
						}); 
					}); 
			}); 
} 

function addTimeline1() 
{ 
	$("div.timelineholder1 > ul.sortable").prepend('<li><div class="timeline"></div></li>'); 
	$($("div.timelineholder1 > ul.sortable").children().get(0)).find(".timeline").each(function() 
			{ 

			}); 
} 

function addTimeline2() 
{ 
	$("div.timelineholder2 > ul.sortable").prepend('<li><div class="timeline"></div></li>'); 
	$($("div.timelineholder2 > ul.sortable").children().get(0)).find(".timeline").each(function() 
			{ 

			}); 
} 

$(this).parent().attr("dx", "10");
},
	function(e)
{
	$(this).parent().attr("dx", "0");
});
$($(this).children().get(1)).hover(function(e)
		{
		$(this).parent().attr("dx", "-10");
		},
		function(e)
		{
		$(this).parent().attr("dx", "0");
		});
});
setInterval(function()
		{
		$("div.container").each(function()                                        {
			dx = parseInt($(this).attr("dx"));                                                sppx = parseInt($(this).attr("sppx"));
			$(this).attr("pointTime", (parseInt($(this).attr("pointTime")) + dx * sppx) + "");
			draw();
			});
		}, 5);
});
