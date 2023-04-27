<html>
    <head>
        <title>URL Rewriting</title>
    </head>
    <body>
        <%
            int curr=0;
            String last = request.getParameter("curr");
            if(last != null){
                curr = Integer.parseInt(last);
            }
            out.println(curr);
        %>
        <a href="/025/21/21b.jsp?curr=<%=curr-1%>">prev</a>
        <a href="/025/21/21b.jsp?curr=<%=curr+1%>">next</a>
    </body>
</html>