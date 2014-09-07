    /*
        * The variables in which the rating and total votes is stored
        */
    var rating=0.0, total_votes=0;

    /*
        * The variable in which the string returned from the XML responseText
        * is stored in
        */ 
    var ret = "";

    /*
        * The function makes AJAX Requests to the server to get ot set the rating
        */
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
                loadStar(sw);
                if(key!=0 || checkCookie(id))
                {
                    if(!checkCookie(id))
                    {
                        document.getElementById('thanksVote').innerHTML = "Thanks for voting!";
                    }
                    document.getElementById('star1').onmouseover = function(){showText();};
                    document.getElementById('star2').onmouseover = function(){showText();};
                    document.getElementById('star3').onmouseover = function(){showText();};
                    document.getElementById('star4').onmouseover = function(){showText();};
                    document.getElementById('star5').onmouseover = function(){showText();};
                    var a = document.getElementsByTagName('a');
                    for(var i=0; i<a.length; i++)
                        a[i].removeAttribute('href');
                }

                if(key!=0 && !checkCookie(id))
                {
                    var likesVisited = getCookie('likes');
                    if(likesVisited!=null && likesVisited!="")
                        likesVisited += ("&"+id);
                    else
                        likesVisited = id;
                    setCookie(likesVisited,10);
                }
                if(key!=0){
                    showText();
                }
            }
        }
        xmlhttp.open("POST","/ekShiksha/rating/rating.jsp",true);
        xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xmlhttp.send('q='+key+'&id='+id);
    }

    /*
        * After the request thhis function is used load the right starImages according
        * to the rating.
        */
    function loadStar(sw)
    {
        var tmp = window.ret.split("&")[1];
        if(!isNaN(parseFloat(tmp)))
            rating = parseFloat(tmp).toFixed(1);
        else
            rating = 0;

        if(rating!=0.0)
        {
            if(((rating*10)%10)==0)
                document.getElementById('showRatingText').innerHTML = "Rating: <b>" + parseInt(rating,0) + "</b>/5 ";
            else
                document.getElementById('showRatingText').innerHTML = "Rating: <b>" + rating + "</b>/5 ";

            tmp = window.ret.split("&")[2];
            if(parseInt(tmp)==1)
                document.getElementById('showRatingText').innerHTML += " (" + tmp + " vote cast)";
            else
                document.getElementById('showRatingText').innerHTML += " (" + tmp + " votes cast)";
        }

        if(rating==0.0)
        {
            document.getElementById('showRatingText').innerHTML = "Rate It!";
        }
        
        if(sw=='off'){
            document.getElementById('voteContainer').style.display = "none";
        }
        else
            document.getElementById('voteContainer').style.display = "block";

        var starTags = Array('star1','star2','star3','star4','star5');
        var i;

        for(i=1; i<=rating; i++)
            document.getElementById(starTags[i-1]).src = "images/fullStar.gif";

        if(rating-Math.floor(rating)>0)
        {
            document.getElementById(starTags[i-1]).src = "images/partialStar.gif";
            i++;
        }

        for(i; i<=5; i++)
            document.getElementById(starTags[i-1]).src = "images/emptyStar.gif";
    }

    /*
        * This method is used to create the hover effect
        */
    function hoverStar(no)
    {
        var starTags = Array('star1','star2','star3','star4','star5');

        for(i=1; i<=no; i++)
            document.getElementById(starTags[i-1]).src = "images/fullStar.gif";

        for(i; i<=5; i++)    
            document.getElementById(starTags[i-1]).src = "images/emptyStar.gif";
        showText();
    }
    
    function showText(){
        document.getElementById("voteContainer").style.display = "block";
    }
    
    
    function setCookie(value, exdays)
    {
        var exdate=new Date();
        exdate.setDate(exdate.getDate() + exdays);
        var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString());
        document.cookie="likes" + "=" + c_value;
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
        var likesVisited = getCookie('likes');
        if(likesVisited!=null && likesVisited!="")
        {
            var likes = likesVisited.split("&");
            for(var i=0;i<likes.length;i++)
            {
                if(id==likes[i])
                    return true;
            }
        }
        return false;
    }