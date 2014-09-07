/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
        function setCookie(value, exdays)
        {
            var exdate=new Date();
            exdate.setDate(exdate.getDate() + exdays);
            var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString());
            document.cookie="locations" + "=" + c_value;
        }
        
        function getCookie(c_name)
        {
            var i,x,y,ARRcookies=document.cookie.split(";");
            for (i=0;i<ARRcookies.length;i++)
            {
                x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
                y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
                x=x.replace(/^\s+|\s+$/g,"");
                if (x==c_name)
                {
                    return unescape(y);
                }
            }
            return null;
        }
        
        function checkCookie(id)
        {
            var locationsVisited = getCookie('locations');
            if(locationsVisited!=null && locationsVisited!="")
            {
                var locations = locationsVisited.split("&");
                for(var i=0;i<locations.length;i++)
                {
                    if(id==locations[i])
                        return true;
                }
            }
            return false;
        }
        var ret = "";
        function changeContent(key, id, sw)
            {
                if (window.XMLHttpRequest)
                {
                    // code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {
                    // code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        window.ret = xmlhttp.responseText.toString();
                        if(key!=0 || checkCookie(id))
                        {
                            var a = document.getElementsByTagName('a');
                            a[0].removeAttribute('href');
                            document.getElementById("likeImg").src = "images/Liked.png"
                            document.getElementById("likeImg").removeAttribute("class");
                        }
                        if(key!=0 && !checkCookie(id))
                        {
                            var locationsVisited = getCookie('locations');
                            if(locationsVisited!=null && locationsVisited!="")
                                locationsVisited += ("&"+id);
                            else
                                locationsVisited = id;
                            setCookie(locationsVisited,10);
                        }
                        if(key==0 && !checkCookie(id))
                            document.getElementById("likeImg").src = "images/Like.png"
                        
                        var tmp = window.ret.split("&")[1];
                        if(sw!="off")
                        {
                            if(parseInt(tmp)==1)
                                document.getElementById("nooflikes").innerHTML = 
                                " One person likes this";
                            else if(parseInt(tmp)==0)
                                document.getElementById("nooflikes").innerHTML = 
                                " Be the first to like it";
                            else
                                document.getElementById("nooflikes").innerHTML = 
                                parseInt(tmp) + " people like this";
                        }
                    }
                }
                xmlhttp.open("POST","/ekShiksha/likes/likes.jsp",true);
                xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xmlhttp.send('q='+key+'&id='+id);
            }