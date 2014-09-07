<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%
        
        session.setAttribute("currentAction","econtent.do");
%>
<html>
    <head><title><bean:message key="ec.intro.heading" /></title></head>
        <p class="heading"><bean:message key="ec.intro.heading" /></p>
        <p class='desc'>
            <bean:message key="ec.page.intro"/>
        </p>
        <p>
            <iframe id="likeButton" src="/ekShiksha/likes/likes.html?sw=on" height="50" 
                width="240" frameborder="0" scrolling="no" overflow="auto" >
            Your browser does not support iframes.<br />
            Please upgrade or use another browser.
        </iframe>
        <iframe id="appletRating" src="/ekShiksha/rating/rating.html?switch=on&q=webpage" height="50"
                width="330" frameborder="0" scrolling="no" overflow="auto" >
            Your browser does not support iframes.<br />
            Please upgrade or use another browser.
        </iframe>
        </p>
        <br /><br />
</html>