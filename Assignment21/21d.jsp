<html>
    <head>
        <title>Session API</title>
    </head>
    <body>
        <%
            int curr=0;
            String last = (String)session.getAttribute("last");

            if(last != null){
                String button = request.getParameter("button");
                if(button!=null){
                    if(button.equals("next")){
                        curr = Integer.parseInt(last)+1;
                    }
                    else{
                        curr = Integer.parseInt(last)-1;
                    }
                }
            }
            session.setAttribute("last", String.valueOf(curr));
            out.println(curr);
        %>
        <form method="post">
            <input type="submit" name="button" value="prev">
            <input type="submit" name="button" value="next">
        </form>
    </body>
</html>