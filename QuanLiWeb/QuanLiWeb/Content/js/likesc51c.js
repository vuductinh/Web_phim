function load_more(that){$(that).next().show()
$(that).hide()}
function load_less(that){$(that).parent().hide()
$(that).parent().prev().show()}
function setVCookie(key,value,date){if(!date){date=31536000000;};var expires=new Date();expires.setTime(expires.getTime()+date);document.cookie=key+'='+value+'; path=/; expires='+expires.toUTCString();};function getVCookie(key){var keyValue=document.cookie.match('(^|;)(?: )?'+key+'=([^;]*)(;|$)');return keyValue?keyValue[2]:null;};$(function(){fid=$('#video').attr('data-id');cid=fid;if(getVCookie(cid)==1){$('.toolbar .likes').addClass('active');$('.toolbar .likes').html($('.toolbar .likes').html().replace('like','liked'))}
if(!getVCookie('_'+cid)){$.ajax({url:'/ajax.php',method:'POST',dataType:"json",data:'view='+vid,success:function(d){setVCookie('_'+cid,1,86400000)}})}
$('.toolbar .likes:not(.active)').click(function(){$(this).addClass('active');var that=$(this)
$.ajax({url:'/ajax.php',method:'POST',dataType:"json",data:'like='+vid,success:function(d){if(d.error==''){that.html(that.html().replace('like','liked'))
that.find('span').html(parseInt(that.find('span').html().replace(",",""))+1)
setVCookie(cid,1)}else{alert(d.error);}}})
$(this).off('click');})})