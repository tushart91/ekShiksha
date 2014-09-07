<%@page import="ekalavya.econtent.action.RetrieveConfirmationMailAction"%>
<%
    String email = request.getParameter("email");
    if(email != null && !email.trim().isEmpty()) {
        RetrieveConfirmationMailAction action = new RetrieveConfirmationMailAction();
        String path = getServletContext().getRealPath("/");
        boolean isMailSent = action.retrieveUrl(email, path);
        if(isMailSent) {
            out.print("true");
        } else {
            out.print("false");
        }
    } else {
        out.print("false");
    }

%>