<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<rapid:override name="breadcrumb">
    <nav class="breadcrumb">
        <div class="bull"><i class="fa fa-volume-up"></i></div>
        <div id="scrolldiv">
            <%--滚动通知--%>
            <div class="scrolltext">
                <ul style="margin-top: 0px;">
                    <c:forEach items="${noticeList}" var="n">
                        <li class="scrolltext-title">
                            <a href="/notice/${n.noticeId}" rel="bookmark">${n.noticeTitle}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </nav>
</rapid:override>

<rapid:override name="left">
    <div id="primary" class="content-area">

        <main id="main" class="site-main" role="main">

            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <a href="https://liuyanzhao.com/6347.html" target="_blank"><img src="https://liuyanzhao.com/wp-content/uploads/2017/04/show4.jpg" alt="【免费开源】一个简单漂亮的Java博客系统-适合初学ssm者" /></a>
                        <p class="slider-home-title">【免费开源】一个简单漂亮的Java博客系统-适合初学ssm者</p>
                    </div>
                    <div class="item">
                        <a href="https://liuyanzhao.com/6347.html" target="_blank"><img src="https://liuyanzhao.com/wp-content/uploads/2017/04/show4.jpg" alt="【免费开源】一个简单漂亮的Java博客系统-适合初学ssm者" /></a>
                        <p class="slider-home-title">【免费开源】一个简单漂亮的Java博客系统-适合初学ssm者</p>
                    </div>
                    <div class="item">
                        <a href="https://liuyanzhao.com/6347.html" target="_blank"><img src="https://liuyanzhao.com/wp-content/uploads/2017/04/show4.jpg" alt="【免费开源】一个简单漂亮的Java博客系统-适合初学ssm者" /></a>
                        <p class="slider-home-title">【免费开源】一个简单漂亮的Java博客系统-适合初学ssm者</p>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <c:forEach items="${pageInfo.list}" var="a">

                <article class="post type-post">

                    <figure class="thumbnail">
                        <a href="/article/${a.articleId}">
                            <img width="280" height="210"
                                 src="/img/thumbnail/random/img_${a.articleId%15}.jpg"
                                 class="attachment-content size-content wp-post-image"
                                 alt="${a.articleTitle}">
                        </a>
                        <span class="cat">
                                <a href="/category/${a.categoryList[a.categoryList.size()-1].categoryId}">
                                        ${a.categoryList[a.categoryList.size()-1].categoryName}
                                </a>
                            </span>
                    </figure>

                    <header class="entry-header">
                        <h2 class="entry-title">
                            <a href="/article/${a.articleId}"
                               rel="bookmark">
                                    ${a.articleTitle}
                            </a>
                        </h2>
                    </header>

                    <div class="entry-content">
                        <div class="archive-content">
                                ${a.articleSummary}...
                        </div>
                        <span class="title-l"></span>
                        <span class="new-icon">
                            <c:choose>
                                <c:when test="${a.articleStatus == 2}">
                                    <i class="fa fa-bookmark-o"></i>
                                </c:when>
                                <c:otherwise>
                                    <jsp:useBean id="nowDate" class="java.util.Date"/>
                                    <c:set var="interval"
                                           value="${nowDate.time - a.articleCreateTime.time}"/><%--时间差毫秒数--%>
                                    <fmt:formatNumber value="${interval/1000/60/60/24}" pattern="#0"
                                                      var="days"/>
                                    <c:if test="${days <= 7}">NEW</c:if>
                                </c:otherwise>
                            </c:choose>
                        </span>
                        <span class="entry-meta">
                            <span class="date">
                                <fmt:formatDate value="${a.articleCreateTime}" pattern="yyyy年MM月dd日"/>
                            &nbsp;&nbsp;
                            </span>
                            <span class="views">
                                <i class="fa fa-eye"></i>
                                    ${a.articleViewCount} views
                            </span>
                            <span class="comment">&nbsp;&nbsp;
                                <a href="/article/${a.articleId}#comments" rel="external nofollow">
                                  <i class="fa fa-comment-o"></i>
                                    <c:choose>
                                        <c:when test="${a.articleCommentCount == 0}">
                                            发表评论
                                        </c:when>
                                        <c:otherwise>
                                            ${a.articleCommentCount}
                                        </c:otherwise>
                                    </c:choose>

                                </a>
                            </span>
                        </span>
                        <div class="clear"></div>
                    </div><!-- .entry-content -->

                    <span class="entry-more">
                        <a href="/article/${a.articleId}"
                           rel="bookmark">
                            阅读全文
                        </a>
                    </span>
                </article>
            </c:forEach>
        </main>
        <%@ include file="Public/part/paging.jsp" %>

    </div>
</rapid:override>
<%--左侧区域 end--%>

<%--侧边栏 start--%>
<rapid:override name="right">
    <%@include file="Public/part/sidebar-2.jsp" %>
</rapid:override>
<%--侧边栏 end--%>

<%--友情链接 start--%>
<rapid:override name="link">
    <div class="links-box">
        <div id="links">
            <c:forEach items="${linkList}" var="l">
                <ul class="lx7">
                    <li class="link-f link-name">
                        <a href="${l.linkUrl}" target="_blank">
                                ${l.linkName}
                        </a>
                    </li>
                </ul>
            </c:forEach>
            <div class="clear"></div>
        </div>
    </div>
</rapid:override>
<%--友情链接 end--%>

<%@ include file="Public/framework.jsp" %>