<%-- 
    Document   : rating
    Created on : May 30, 2012, 9:23:01 PM
    Author     : Tushar
--%>
<%--
    Be Sure to import the rate class which contains the updation code
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="rating.rate"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rating</title>
    </head>
    <body>
        <% 
        rate obj = new rate();
        int q, total_votes;
        String id;
        float rating;
        q = Integer.parseInt(request.getParameter("q"));
        id = request.getParameter("id");
        /*
         * To check if the request was only to get rating or also store rating
         */
        if(q==0){
            rating = obj.getRating(id);
            total_votes = obj.getTotalVotes(id);
        }
        else {
            obj.storeRating(id, q);
            rating = obj.getRating(id);
            total_votes = obj.getTotalVotes(id);
        }
        
        out.print("abc&+"+String.format("%f", rating)+"&"+String.format("%d", total_votes));
        %>
        
    </body>
</html>
