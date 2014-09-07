<%-- 
    Document   : likes
    Created on : Jun 6, 2012, 9:57:15 PM
    Author     : Tushar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="like.likes"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Likes</title>
    </head>
    <body>
        <% 
        likes obj = new likes();
        int q;
        String id;
        int likes;
        q = Integer.parseInt(request.getParameter("q"));
        id = request.getParameter("id");
        /*
         * To check if the request was only to get rating or also store rating
         */
        if(q==0){
            likes = obj.getLikes(id);
        }
        else {
            obj.storeLikes(id);
            likes = obj.getLikes(id);
        }
        
        out.print("abc&+"+String.format("%d", likes));
        %>
    </body>
</html>
