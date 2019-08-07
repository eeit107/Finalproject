<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
<section class="user-dashboard page-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ul class="list-inline dashboard-menu text-center">
<!--           <li><a href="company">申請廠商</a></li> -->
<!--           <li><a href="/testfinalproject/user-details">會員資料</a></li> -->
<h4>廠商申請名單</h4>
<%--           <li><a class="active"  href="<c:url value='/upcompany'/>">修改資料</a></li> --%>
        </ul>
        <div class="dashboard-wrapper dashboard-user-profile">
          <div class="media">
            <div class="pull-left text-center" href="#">
            </div>
     
	           <table class="table">
		           <tr>
			           <th scope="col">帳號</th>
			           <th scope="col">姓名</th>
			           <th scope="col">公司名稱</th>
			           <th scope="col">公司電話</th>
			           <th scope="col">信箱</th>
			           <th scope="col">公司地址</th>
			           <th scope="col">統一編號</th>
			           <th scope="col">審核</th>
		           </tr>
		           <c:forEach var='company' items='${companys}'>
		           <tr>
			           <td>${company.memberid}</td>
			           <td>${company.username}</td>
			           <td>${company.companyname}</td>
			           <td>${company.companytel}</td>
			           <td>${company.email}</td>
			           <td>${company.address}</td>
			           <td>${company.ein}</td>
			           <td>
			           <form action='<c:url value="/docompany-upgrade/${company.seqNo}"/>' method="post">
			             <input type="submit" value="通過" />
		               </form>
					  </td>
		           </tr>
	           </c:forEach>
	           </table>
	           <a href="excel.xls">下載excel</a>
		</div>
		</div>
        
   </section>