$(document).ready(function(){$('.zoom').click(function(){if($('.zoom .server').text()=='Zoom+')
{$('.zoom .server').text('Zoom-');$('.video-player').animate({"min-width":"935px","min-height":"525px"},"fast");$('html,body').animate({scrollTop:$('#container').offset().top},'slow');$('.play-right').css("display","none");$('.play-left').css("border-right","none");$('.play-left').animate({"min-width":"975px",},"fast");}else{$('.zoom .server').text('Zoom+');$('.video-player').animate({"min-width":"630px","min-height":"354px"},"fast");$('html,body').animate({scrollTop:$('#container').offset().top},'slow');$('.play-right').css("display","block");$('.play-left').css("border-right","1px solid #2b2b2b");$('.play-left').animate({"min-width":"650px",},"fast");}});var data_id=$('#video').attr('data-id');var server_id=$('#video').attr('data-sv');if(data_id){server(server_id,data_id);}
$("button.download").click(function(){var id=$('button.download').attr('data-id');if(id){$('#download').html('<p>Loading...</p>');$.post(ajaxurl,{vlxx_download:1,id:id},function(data){$('#download').html(data);});}});$(".download-button").click(function(){var id=$('.download-button a').attr('data-id');if(id){$('#download').html('<p>Loading...</p>');$.post(ajaxurl,{vlxx_download:1,id:id},function(data){$('#download').html(data);});}});function xd(str){str=str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");str=str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");str=str.replace(/ì|í|ị|ỉ|ĩ/g,"i");str=str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");str=str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");str=str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");str=str.replace(/đ/g,"d");str=str.replace(/À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ/g,"A");str=str.replace(/È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ/g,"E");str=str.replace(/Ì|Í|Ị|Ỉ|Ĩ/g,"I");str=str.replace(/Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ/g,"O");str=str.replace(/Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ/g,"U");str=str.replace(/Ỳ|Ý|Ỵ|Ỷ|Ỹ/g,"Y");str=str.replace(/Đ/g,"D");return str;}
$('.search').submit(function(){var kw=xd($('.searchTxt').val());kw=$.trim(kw);kw=kw.replace(/\ /gi,'-');if(kw){window.location.href='./search/'+kw+'/';}
return false;});});var reloadedCount={};function reloadCurrentserver(){var data_id=$('#video').attr('data-id');var server_id=$('#video').attr('data-sv');if(data_id){server(server_id,data_id);}}
function del_cache(){var data_id=$('#video').attr('data-id');var server_id=$('#video').attr('data-sv');$.post(ajaxurl,{delcache:1,server:server_id,videoid:data_id});}
function errorHandler(){var time=2;var data_id=$('#video').attr('data-id');var server_id=$('#video').attr('data-sv');if(typeof reloadedCount[server_id]=="undefined"){reloadedCount[server_id]=1;}
if(reloadedCount[server_id]<time){setTimeout(function(){reloadCurrentserver();},100);reloadedCount[server_id]++;}else{$.post(ajaxurl,{reloadError:1,server:server_id,videoid:data_id});$('#video .video-player').append("<p style='background:#666; color: #fff; text-align:center; margin-top: 5px; padding: 5px;'>This server is error and automatic reload in "+time+" times."
+"<br />Please choose server <font color='#de2600'>#2</font> <font color='#de2600'>#3</font> if available.</p>");}}
var cookie_notice=!1,error_thispage=false;function server(server,id){var id=parseInt(id);var server=parseInt(server);$.post(ajaxurl,{vlxx_server:1,id:id,server:server},function(data){var jsons=JSON.parse(data);$('.desktop').html(jsons.player);$('.download-button').html(jsons.download);$('.video-server').removeClass('bt_active');$('#server'+server).addClass('bt_active');$('#video').attr('data-id',id);$('#video').attr('data-sv',server);});$('html, body').animate({scrollTop:($('.desktop').offset().top)-50,});return false;}