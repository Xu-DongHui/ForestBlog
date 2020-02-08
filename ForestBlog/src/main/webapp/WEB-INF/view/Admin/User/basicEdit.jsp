<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<head>
</head>

<body>
    <%--目前只提供展示功能--%>
    <form>
        <input type="hidden" name="userId" id="userId" value="${user.userId}">
        <div>
            <label>头像</label>
            <div>
                <img src="${user.userAvatar}" id="demo1" width="100"
                     height="100">
            </div>
        </div>
        <div>
            <label >用户名 <span style="color: #FF5722; ">*</span></label>
            <div>
                <%--20200125 用户名暂时由管理员指定，不提供修改判断--%>
                <input type="text" value="${user.userName}" name="userName" id="userName" readonly="true">
            </div>
        </div>
        <div>
            <label >密码 <span style="color: #FF5722; ">*</span></label>
            <div>
                <input type="password" name="userPass" value="${user.userPass}" id="userPass" readonly="true">
            </div>
        </div>
        <div>
            <label >Email <span style="color: #FF5722; ">*</span></label>
            <div>
                <input type="email" name="userEmail" value="${user.userEmail}" id="userEmail" readonly="true">
            </div>
        </div>
    </form>
</body>