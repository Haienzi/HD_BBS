<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Java版面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/forum.css">
  </head>
  <body>
	<%@ include file="header.jsp" %>    

  <div id="forum_content">
    <h3>Java论坛</h3>
    <ul class="pagination">
      <li><a href="#">&laquo; 首页</a></li>
      <li class="previous"><a href="#">&larr; 上一页</a></li>
      <li class="active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li><a href="#">5</a></li>
      <li class="disable"><a href="#">...</a></li>
	    <li class="next"><a href="#">下一页 &rarr;</a></li>
      <li><a href="#">&raquo; 尾页</a></li> <span class="total_page">总共 564页</h4>
   </ul>
   <table class="table table-striped table-responsive">
     <thead>
    <tr>
      <th>标题</th>
      <th>提问人</th>
      <th>回复数</th>
      <th>最后更新时间</th>
      <th>管理</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="topic.jsp">刚进入Java行列，报的培训班，学到面向对象 感觉脑子不够用啊</a></td>
      <td>lasd</td>
      <td>10</td>
      <td>23/11/2013</td>
      <td><a href="#">管理</a></td>
    </tr>
    <tr>
      <td><a href="#">刚进入Java行列，报的培训班，学到面向对象 感觉脑子不够用啊</a></td>
      <td>lasd</td>
      <td>10</td>
      <td>23/11/2013</td>
      <td><a href="#">管理</a></td>
    </tr>
    <tr>
      <td><a href="#">刚进入Java行列，报的培训班，学到面向对象 感觉脑子不够用啊</a></td>
      <td>lasd</td>
      <td>10</td>
      <td>23/11/2013</td>
      <td><a href="#">管理</a></td>
    </tr>
    <tr>
      <td><a href="#">刚进入Java行列，报的培训班，学到面向对象 感觉脑子不够用啊</a></td>
      <td>lasd</td>
      <td>10</td>
      <td>23/11/2013</td>
      <td><a href="#">管理</a></td>
    </tr>
  </tbody>
   </table>
 </div>
  </body>
</html>
