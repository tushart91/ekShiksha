<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>These are iframes</div>
        
        <!--
            This iframe is for applets. The applet id must be specified
            in the query string. Ex: ?q=applet&id=12345
        -->
        <iframe id="appletRating" src="/ekShiksha/rating/rating.html?switch=on&q=applet&id=" height="50" 
                width="330" frameborder="0" scrolling="no" overflow="auto" >
            Your browser does not support iframes.<br />
            Please upgrade or use another browser.
        </iframe>
        
        <!--
            This iframe is for webpages. This iframe has to be simply put into
            the webpage where it is intended to be used.
        -->
        <iframe id="webpageRating" src="/ekShiksha/rating/rating.html?switch=off&q=webpage" height="50" 
                width="330"  frameborder="0" scrolling="no" overflow="auto" >
            Your browser does not support iframes.<br />
            Please upgrade or use another browser.
        </iframe>
        <script type="text/javascript">
            document.getElementById('appletRating').src += '12345';
        </script>
    </body>
</html>
