<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <body>
    <head><%@ include file="head.txt"%>
    <title>Vivo智能手机官网</title>  
    <link rel="stylesheet" type="text/css" href="mycss.css">
    </head>
    <script>    
        window.onload=function(){    
            var oBox=document.getElementById('box');    
            var oUl=oBox.children[0];    
            var aLi=oUl.children;    

            //复制一份内容 ，制作出无缝的效果   
            oUl.innerHTML+=oUl.innerHTML;    
            oUl.style.width=aLi.length*aLi[0].offsetWidth+'px';   

            setInterval(function(){   //开定时器，这样就可以自己切换，无需人工干预。 
                var l=oUl.offsetLeft-10;  //图片切换，就是移动距离
                if(l<=-oUl.offsetWidth/2){    
                    l=0;    
                }    
                oUl.style.left=l+'px';    
            },150);    
        };    
    </script>     
    <body>        
    <center>
        <image src="sy.jpg" width="100%" ></image>
        <image src="sy11.jpg" width="325" height="200"></image>
        <image src="sy44.jpg" width="325" height="200"></image> 
        <image src="sy33.jpg" width="325" height="200"></image>
        <image src="sy22.jpg" width="325" height="200"></image>
        <hr></hr>
        <div id="box">    
            <ul>    
               <li><img src="vivo1.jpg" width="300" height="300">Xplay6-1</li>    
               <li><img src="vivo2.jpg" width="300" height="300">Xplay6-2</li>    
               <li><img src="vivo3.jpg" width="300" height="300">X9s Plus</li>    
               <li><img src="vivo4.jpg" width="300" height="300">X9</li>    
               <li><img src="vivo5.jpg" width="300" height="300">X9s</li>
               <li><img src="vivo6.jpg" width="300" height="300">X9 Plus</li>
               <li><img src="vivo7.jpg" width="300" height="300">Y66</li>
               <li><img src="vivo8.jpg" width="300" height="300">Y67A</li>
               <li><img src="vivo9.jpg" width="300" height="300">Y67</li>
               <li><img src="vivo10.jpg" width="300" height="300">Y55</li>
               <li><img src="vivo11.jpg" width="300" height="300">Y51A</li>
               <li><img src="vivo12.jpg" width="300" height="300">Y53</li>              
            </ul>    
        </div>
        微信扫描下方二维码，了解更多有关VIVO的更多信息！<br>
        <img src="view4.jpg">
        <br><br>24小时全国客服在线：400-678-9688
        <br><br>Copyright 2011-2017 广东步步高电子工业有限公司 版权所有 保留一切权利粤B2-20080267 | 粤ICP备05100288号 
    </center>
    </body>
</html>
