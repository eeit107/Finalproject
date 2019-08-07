<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
function send() { 
	  var msg = "確定送出?"; 
	 if (confirm(msg)==true){ 
	   return true; 
	  }else{ 
	   return false; 
	 } 
	 } 
	</script>
<!-- 修改廠商資料 -->
<form action="doupcompany" method="POST">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputmemberid">帳號</label>
      <input type="text" class="form-control" id="memberid" name="memberid"  value="${company.memberid}" >
    </div>
    
      <div class="form-group col-md-6">
      <label for="inputusername">姓名</label>
      <input type="text" class="form-control" id="username" name="username" value="${company.username}">
    </div>
  
    <div class="form-group col-md-6">
      <label for="inputPassword">密碼</label>
      <input type="password" class="form-control" id="password" name="password" value="${company.password}">
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputemail">信箱</label>
      <input type="text" class="form-control" id="email" name="email" value="${company.email}">
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputphone">手機</label>
      <input type="text" class="form-control" id="phone" name="phone" value="${company.phone}">
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputaddress">公司地址</label>
      <input type="text" class="form-control" id="address" name="address" value="${company.address}">
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputein">統一編號</label>
      <input type="text" class="form-control" id="ein" name="ein" value="${company.ein}">
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputcompanyname">公司名稱</label>
      <input type="text" class="form-control" id="companyname" name="companyname" value="${company.companyname}">
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputcompanyname">公司電話</label>
      <input type="text" class="form-control" id="companytel" name="companytel" value="${company.companytel}">
    </div>
    
    <div class="form-group col-md-12" >
    <input type="submit" name="送出" onclick="send()">
    </div>
    </div>
<!--   <button type="submit" class="btn btn-primary">Sign in</button> -->
</form>