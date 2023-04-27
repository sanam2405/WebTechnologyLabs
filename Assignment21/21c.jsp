<html>
    <head>
        <title>Cookies</title>
    </head>
    <body>
        <%
            int curr=0;
            Cookie[] cookies = request.getCookies();
            if(cookies != null){
                for(Cookie c : cookies){
                    String cName = c.getName();
                    if(cName.equals("curr")){
                        String cValue = c.getValue();
                        String button = request.getParameter("button");
                        if(button!=null){
                            if(button.equals("next")){
                                curr = Integer.parseInt(cValue)+1;
                            }
                            else{
                                curr = Integer.parseInt(cValue)-1;
                            }
                        }
                        break;
                    }
                }
            }
            Cookie c = new Cookie("curr", String.valueOf(curr));
            response.addCookie(c);
            out.println(curr);
        %>
        <form method="post">
            <input type="submit" name="button" value="prev">
            <input type="submit" name="button" value="next">
        </form>
    </body>
</html>