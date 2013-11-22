<%--
  Created by IntelliJ IDEA.
  User: fxdev-belyaev-ay
  Date: 22.11.13
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:each in="${list}" var="item">
        <h2>----------------</h2>
        <div>
            <g:each in="${item.params}" var="param">&${param}</g:each>
        </div>
    </g:each>
</body>
</html>