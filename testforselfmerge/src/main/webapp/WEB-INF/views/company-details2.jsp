<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 廠商資料 -->
<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputmemberid">帳號</label>
      <input type="text" class="form-control" id="memberid" name="memberid"  value="${company.memberid}" disabled>
    </div>
    
      <div class="form-group col-md-6">
      <label for="inputusername">姓名</label>
      <input type="text" class="form-control" id="username" name="username" value="${company.username}"disabled>
    </div>
  
    <div class="form-group col-md-6">
      <label for="inputPassword">密碼</label>
      <input type="password" class="form-control" id="password" name="password" value="${company.password}"disabled>
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputemail">信箱</label>
      <input type="text" class="form-control" id="email" name="email" value="${company.email}"disabled>
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputphone">手機</label>
      <input type="text" class="form-control" id="phone" name="phone" value="${company.phone}"disabled>
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputaddress">公司地址</label>
      <input type="text" class="form-control" id="address" name="address" value="${company.address}"disabled>
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputein">統一編號</label>
      <input type="text" class="form-control" id="ein" name="ein" value="${company.ein}"disabled>
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputcompanyname">公司名稱</label>
      <input type="text" class="form-control" id="companyname" name="companyname" value="${company.companyname}"disabled>
    </div>
    
    <div class="form-group col-md-6">
       <label for="inputcompanyname">公司電話${company.companytel}</label>
      <input type="text" class="form-control" id="companytel" name="companytel" value="${company.companytel}"disabled>
    </div>
    </div>
<!--   <button type="submit" class="btn btn-primary">Sign in</button> -->
</form>