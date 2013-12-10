<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<? include("title.php");?>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="all" href="css/jquery.heroCarousel.css" type="text/css" />
<script type="text/javascript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>

<body style="background-image:url(images/diamond-bg.jpg);" onload="MM_preloadImages('images/nav_01-over.png','images/nav_03-over.png','images/nav_05-over.png','images/nav_07-over.png','images/nav_09-over.png','images/nav_11-over.png','images/topIcon-fb-over.png','images/topIcon-twitter-over.png','images/topIcon-p-over.png','images/topIcon-rss-over.png','images/topIcon-linked-over.png','images/topIcon-mail-over.png')">
<div id="top-bar">
<? include("header.php");?>
</div> <!-- end of "top-bar" -->

<div class="bdy-img" style="width:100%; margin-top:40px;height:460px;">
<div class="hero">
			<div class="hero-carousel">
				<?
				$banners=mysql_query("select * from home_banners order by sortorder;");
				while($b=mysql_fetch_array($banners)){
				?>
				<article>
					<img src="home_banners/<? echo $b['image'];?>" alt="slide 1" width="850" height="480" />
					<?
					if($b['linktype']<>"No Link"){
					?>
					<a href="<? echo stripslashes($b['title']);?>" <? if($b['linktype']=="External"){echo "target=_blank";}?>>
					<div class="contents">				  </div>
				  </a>
				  <?
				  }
				  ?>
			  </article>
				<?
				}
				?>
				
			</div>
		</div>
</div>

<div class="headLine-bg-plain" style="width:850px;">
  <table width="850" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center"><img src="images/home_v_line.png" width="415" height="5" /></td>
      <td height="15" align="center" ><img src="images/home_v_line.png" width="415" height="5" /></td>
    </tr>
    <tr>
      <td align="center"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <?
		$home_image=mysql_query("select * from home_images where id=1;");
		$img=mysql_fetch_array($home_image);
		?>
        <tr>
          <td width="42%" rowspan="2"><a href="#" onmouseover="change('thumb1','home_thumb_over.png');" onmouseout="change('thumb1','<? echo $img["image"];?>');"><div class="overlay-home"><img src="home_images/home_thumb.png" width="150" height="120" id="thumb1" /></div><img src="home_images/<? echo $img["image"];?>" width="150" height="120" border="0" /></a>
		  
		  </td>
          <td width="63%" align="center" class="home-txt-white-sml"> </td>
        </tr>
        <tr>
          <td align="center" class="home-txt-white"><span class="home-txt-white-sml" style="font-size:12px;">new arrivals</span><br />just arrived<span class="home-txt-white-sml" style="text-transform:none;"><br /><br />Latest stock moves fast so dont miss<br /> out on our latest timepieces &raquo;</span></td>
        </tr>
        
      </table></td>
      <td align="center"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
         <?
		$home_image=mysql_query("select * from home_images where id=4;");
		$img=mysql_fetch_array($home_image);
		?>
        <tr>
          <td width="42%" rowspan="2"><a href="#" onmouseover="change('thumb4','home_thumb_over.png');" onmouseout="change('thumb4','<? echo $img["image"];?>');"><div class="overlay-home"><img src="home_images/home_thumb.png" width="150" height="120" id="thumb4" /></div><img src="home_images/<? echo $img["image"];?>" width="150" height="120" border="0" /></a></td>
          <td width="63%" align="center" class="home-txt-white-sml"></td>
        </tr>
        <tr>
          <td align="center" class="home-txt-white"><span class="home-txt-white-sml" style="font-size:12px;">diamonds at t42</span><br>if you build it they will come<span class="home-txt-white-sml" style="text-transform:none;"><br /><br />lipsum lipsum lipsum lipsum lipsum <br />
            lipsum lipsum lipsum  &raquo;</span></td>
        </tr>
        
      </table></td>
    </tr>
    <tr>
      <td height="15" align="center"><img src="images/home_v_line.png" width="415" height="5" /></td>
      <td align="center"><img src="images/home_v_line.png" width="415" height="5" /></td>
    </tr>
    <tr>
      <td align="center" ><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
         <?
		$home_image=mysql_query("select * from home_images where id=2;");
		$img=mysql_fetch_array($home_image);
		?>
        <tr>
          <td width="63%" align="center" class="home-txt-white-sml"> </td>
          <td width="42%" rowspan="2" align="right" class="home-txt-white-sml"><a href="#" onmouseover="change('thumb2','home_thumb_over.png');" onmouseout="change('thumb2','<? echo $img["image"];?>');"><div class="overlay-home"><img src="home_images/home_thumb.png" width="150" height="120" id="thumb2" /></div><img src="home_images/<? echo $img["image"];?>" width="150" height="120" border="0" /></a></td>
        </tr>
        <tr>
          <td align="center" class="home-txt-white"><span class="home-txt-white-sml" style="font-size:12px;">time to upgrade</span><br />find, Upgrade<br />or cell<span class="home-txt-white-sml" style="text-transform:none;"><br /><br />lipsum lipsum lipsum lipsum lipsum <br />
            lipsum lipsum lipsum  &raquo;</span></td>
          </tr>
        
      </table></td>
      <td align="center" ><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
         <?
		$home_image=mysql_query("select * from home_images where id=5;");
		$img=mysql_fetch_array($home_image);
		?>
        <tr>
          <td width="63%" align="center" class="home-txt-white-sml"></td>
          <td width="42%" rowspan="2" align="right" class="home-txt-white-sml"><a href="#" onmouseover="change('thumb5','home_thumb_over.png');" onmouseout="change('thumb5','<? echo $img["image"];?>');"><div class="overlay-home"><img src="home_images/home_thumb.png" width="150" height="120" id="thumb5" /></div><img src="home_images/<? echo $img["image"];?>" width="150" height="120" border="0" /></a></td>
        </tr>
        <tr>
          <td align="center" valign="middle" class="home-txt-white"><span class="home-txt-white-sml"  style="font-size:12px;">carr diamonds</span><br />bespoke services<span class="home-txt-white-sml" style="text-transform:none;"><br /><br />lipsum lipsum lipsum lipsum lipsum <br />
            lipsum lipsum lipsum  &raquo;</span> </td>
        </tr>
        
        
      </table></td>
    </tr>
    <tr>
      <td height="15" align="center" ><img src="images/home_v_line.png" width="415" height="5" /></td>
      <td align="center" ><img src="images/home_v_line.png" width="415" height="5" /></td>
    </tr>
    <tr>
      <td align="center" ><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
         <?
		$home_image=mysql_query("select * from home_images where id=3;");
		$img=mysql_fetch_array($home_image);
		?>
        <tr>
          <td width="39%" rowspan="2"><a href="#" onmouseover="change('thumb3','home_thumb_over.png');" onmouseout="change('thumb3','<? echo $img["image"];?>');"><div class="overlay-home"><img src="home_images/home_thumb.png" width="150" height="120" id="thumb3" /></div><img src="home_images/<? echo $img["image"];?>" width="150" height="120" border="0" /></a></td>
          <td width="61%" align="center" class="home-txt-white-sml"> </td>
        </tr>
        <tr>
          <td align="center" class="home-txt-white"><span class="home-txt-white-sml" style="font-size:12px;">after care</span><br />poetry in motion<span class="home-txt-white-sml" style="text-transform:none;"><br /><br />lipsum lipsum lipsum lipsum lipsum <br />lipsum lipsum lipsum  &raquo;</span> </td>
        </tr>
        
        
      </table></td>
      <td align="center" ><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
         <?
		$home_image=mysql_query("select * from home_images where id=6;");
		$img=mysql_fetch_array($home_image);
		?>
        <tr>
          <td width="42%" rowspan="2"><a href="#" onmouseover="change('thumb6','home_thumb_over.png');" onmouseout="change('thumb6','<? echo $img["image"];?>');"><div class="overlay-home"><img src="home_images/home_thumb.png" width="150" height="120" id="thumb6" /></div><img src="home_images/<? echo $img["image"];?>" width="150" height="120" border="0" /></a></td>
          <td width="63%" align="center" class="home-txt-white-sml"></td>
        </tr>
        <tr>
          <td align="center" class="home-txt-white"><span class="home-txt-white-sml" style="font-size:12px;">twitter</span><br />follow us<span class="home-txt-white-sml" style="text-transform:none;"><br /><br /><?
		require 'tmhOAuth.php';
require 'tmhUtilities.php';
 
$tmhOAuth = new tmhOAuth(array(
 'consumer_key' => 'LVb46uJVersVM4k1X7Es0A',
 'consumer_secret' => 'qKV6LgciP4OxqF9r9UQvoo6dR2zNqfV56342YusMmLc',
 'user_token' => '221694835-05g9OTogd9sCH0EZLM0psgxUyFExgisdLJHCHHew',
 'user_secret' => 'ZxwfMPaUndqoaSzyyn0iPm4ZdkHaLvHVbweZL45Og',
 'curl_ssl_verifypeer' => false
));
 
$code = $tmhOAuth->request('GET', $tmhOAuth->url('1.1/statuses/user_timeline'), array(
 'screen_name' => 'carrwatches',
 'count' => '1'));
 
$response = $tmhOAuth->response['response'];
$tweets = json_decode($response, true);
for($i=0;$i<count($tweets);$i++){
$tweet = $tweets[$i]['text'];
$tweet = preg_replace("/([\w]+\:\/\/[\w-?&;#~=\.\/\@]+[\w\/])/", "<a target=\"_blank\" href=\"$1\">$1</a>", $tweet);
$tweet = preg_replace("/#([A-Za-z0-9\/\.]*)/", "<a target=\"_new\" href=\"http://twitter.com/search?q=$1\">#$1</a>", $tweet);
$tweet = preg_replace("/@([A-Za-z0-9\/\.]*)/", "<a href=\"http://www.twitter.com/$1\">@$1</a>", $tweet);
echo substr($tweet,0,190);
echo "...";
}
		?></span> </td>
        </tr>
        
        
      </table></td>
    </tr>
    <tr>
      <td width="425" height="15" align="center"><a href="diamonds_bespoke.php"><img src="images/home_v_line.png" width="415" height="5" /></a></td>
      <td width="425" align="center"><a href="contact.php"><img src="images/home_v_line.png" width="415" height="5" /></a></td>
    </tr>
  </table>
</div>



<div id="spacer" style="height:420px;"></div>
<div class="footer-bg">
<? include("footer.php");?>
</div> <!-- end of "footer-bg"  -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.js"></script>
		<script src="js/jquery.easing-1.3.js"></script>
		<script src="js/jquery.heroCarousel-1.3.js"></script>
		<script>
			$(document).ready(function(){
				$('.hero-carousel').heroCarousel({
					easing: 'easeOutExpo',
					css3pieFix: true
				});
			});
		function change(srce,img){
		//alert(srce);
		document.getElementById(srce).src='home_images/'+img;
		}
		</script>
</body>
</html>
