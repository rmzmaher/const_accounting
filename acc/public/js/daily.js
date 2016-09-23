// $('.datepicker').datepicker({
//     format: 'dd/mm/yyyy'
//  });
$('#showdate').datepicker({dateFormat: 'mm-dd-yy' });
    $('#sub').click(function(){
    	var _myDate = new Date($('#showdate').val());
    	alert(_myDate);
    	$.ajax({
                url:"http://localhost:3000/main/daily",
                type:"GET",
                data:{'id':_myDate},
                success:function(data){	
                $('.conta').empty()
                $( ".conta" ).append( "<h1> يومية "+data.date+"</h1>" );
                // alert(data.buys[0]['paid'] )
                // alert(data.buys[1]['paid'])
				var content = '<table border=2px style="text-align:center" class="table table-bordered table-striped active info" cellspacing="0" width="100%" ><tr><th>ملاحظات</th><th colspan="3" >قيمة</th><th>المبلغ</th></tr>'
				for(i=0; i<data.buys.length; i++){
				    		content += '<tr>\
								<td>' +data.buys[i]['note'] +'</td>\
						        <td>' +data.buys[i]['good'] +'</td>\
                                <td>' +data.buys[i]['unit'] +'</td>\
						        <td>'+ data.buys[i]['quantity'] +'</td>\
						        <td>'+ data.buys[i]['paid'] +'</td>\
				    		</tr>';
						}
				content += "</table>"
				$('.conta').append(content);
				}

            }); 
   });
