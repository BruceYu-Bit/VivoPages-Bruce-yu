<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <body>
    <head><%@ include file="head.txt"%>
    <title>Vivo�����ֻ�����</title>  
    <link rel="stylesheet" type="text/css" href="mycss.css">
    </head>
    <script>    
        window.onload=function(){    
            var oBox=document.getElementById('box');    
            var oUl=oBox.children[0];    
            var aLi=oUl.children;    

            //����һ������ ���������޷��Ч��   
            oUl.innerHTML+=oUl.innerHTML;    
            oUl.style.width=aLi.length*aLi[0].offsetWidth+'px';   

            setInterval(function(){   //����ʱ���������Ϳ����Լ��л��������˹���Ԥ�� 
                var l=oUl.offsetLeft-10;  //ͼƬ�л��������ƶ�����
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
        ΢��ɨ���·���ά�룬�˽�����й�VIVO�ĸ�����Ϣ��<br>
        <img src="view4.jpg">
        <br><br>24Сʱȫ���ͷ����ߣ�400-678-9688
        <br><br>Copyright 2011-2017 �㶫�����ߵ��ӹ�ҵ���޹�˾ ��Ȩ���� ����һ��Ȩ����B2-20080267 | ��ICP��05100288�� 
    </center>
    </body>
</html>
