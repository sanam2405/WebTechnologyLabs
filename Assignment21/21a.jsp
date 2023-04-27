<html>
    <head>
        <title>Hidden Fields</title>
    </head>
    <body>
        <%
            int curr=0;
            String last = request.getParameter("curr");
            String button = request.getParameter("button");
            if(button != null){
                if(button.equals("next")){
                    curr = Integer.parseInt(last)+1;
                }
                else{
                    curr = Integer.parseInt(last)-1;
                }
            }
            out.println(curr);
        %>
        <form method="post">
            <input type="hidden" name="curr" value="<%=curr%>">
            <input type="submit" name="button" value="prev">
            <input type="submit" name="button" value="next">
        </form>
    </body>
</html>