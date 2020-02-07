<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <link rel="shortcut icon" href="/img/logo.png">
    <title>
        ${options.optionSiteTitle}后台
        <rapid:block name="title"></rapid:block>
    </title>
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
    <link rel="stylesheet" href="/css/back.css">
    <link rel="stylesheet" href="/plugin/font-awesome/css/font-awesome.min.css">
    <rapid:block name="header-style"></rapid:block>
    <rapid:block name="header-script"></rapid:block>
    <rapid:override name="title">
        - 编辑用户
    </rapid:override>
    <rapid:override name="header-style">
        <style>
            .layui-form-item .layui-input-inline {
                width: 300px;
            }

            .layui-word-aux {
                color: #FF5722 !important;
            }
            .layui-form-label {
                width: 120px;
            }
            input {
                border: 0!important;
            }
        </style>
    </rapid:override>
</head>
<body>
    <form class="layui-form" action="/admin/user/editSubmit" id="userForm"
          method="post">
        <input type="hidden" name="userId" id="userId" value="${user.userId}">
        <div class="layui-form-item">
            <a class="layui-btn layui-btn-primary"  href="/admin/user/edit/${user.userId}">编辑</a>
            <label class="layui-form-label">头像</label>
            <div class="layui-input-inline">
                <div class="layui-upload">
                    <div class="layui-upload-list" style="">
                        <img class="layui-upload-img" src="${user.userAvatar}" id="demo1" width="100"
                             height="100">
                        <p id="demoText"></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名 </label>
            <div class="layui-input-inline">
                <input type="text" value="${user.userName}"  id="userName" required
                       autocomplete="off" class="layui-input" disabled>
            </div>
            <div class="layui-form-mid layui-word-aux" id="userNameTips"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码 </label>
            <div class="layui-input-inline">
                <input type="password" value="${user.userPass}" id="userPass" required
                       autocomplete="off" class="layui-input" min="3" max="20" disabled>
            </div>
            <div class="layui-form-mid layui-word-aux"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">昵称 </label>
            <div class="layui-input-inline">
                <input type="text"  value="${user.userNickname}" required
                       placeholder="" autocomplete="off" min="2" max="10"
                       class="layui-input" disabled>
            </div>
            <div class="layui-form-mid layui-word-aux"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">Email </label>
            <div class="layui-input-inline">
                <input type="email"  value="${user.userEmail}" id="userEmail" required
                       class="layui-input" disabled>
            </div>
            <div class="layui-form-mid layui-word-aux" id="userEmailTips"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">URL </label>
            <div class="layui-input-inline">
                <input type="url"  value="${user.userUrl}" placeholder="" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">注册时间 </label>
            <div class="layui-input-inline">
                <input type="text"  value="<fmt:formatDate value="${user.userRegisterTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
    " placeholder="" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">最后登录时间 </label>
            <div class="layui-input-inline">
                <input type="text"  value='<fmt:formatDate value="${user.userLastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
    ' placeholder="" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">最后登录IP </label>
            <div class="layui-input-inline">
                <input type="text"  value="${user.userLastLoginIp}" placeholder="" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态 </label>
            <div class="layui-input-inline">
                <input type="text"  value='<c:choose>
                    <c:when test="${user.userStatus==0}">禁用
                    </c:when>
                    <c:otherwise>正常
                    </c:otherwise>
                </c:choose>' placeholder="" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>
        <p class="submit">
            <input type="button" name="wp-submit" id="submit-btn" class="button button-primary button-large" value="编辑" />
        </p>
    </form>
</body>


