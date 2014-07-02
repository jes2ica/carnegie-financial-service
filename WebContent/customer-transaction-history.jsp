<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Carnegie Financial Services</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" />
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="./css/pages/dashboard.css" rel="stylesheet" /> 
    

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>
	
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 				
			</a>
			
			<a class="brand" href="./">Carnegie Financial Services</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${sessionScope.userName} <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="change-employee-password.jsp"><i class="icon-lock"></i> Change Password</a>
							</li>
							
							<li class="divider"></li>
							
							<li>
								<a href="logout_out.action"><i class="icon-off"></i> Logout</a>
							</li>
						</ul>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->




<div id="content">
	
	<div class="container">
		
		<div class="row">
			
			<div class="span3">
				
				<div class="account-container">
				
					<div class="account-avatar">
						<img src="./img/headshot.png" alt="" class="thumbnail" />
					</div> <!-- /account-avatar -->
				
					<div class="account-details">
					
						<span class="account-name">${firstName} ${lastName}</span>
						
						<span class="account-role">Administrator</span>
						
						<span class="account-actions">
							<a href="javascript:;">Profile</a> |
							
							<a href="javascript:;">Edit Settings</a>
						</span>
					
					</div> <!-- /account-details -->
				
				</div> <!-- /account-container -->
				
				<hr />
				
				<ul id="main-nav" class="nav nav-tabs nav-stacked">
					
					<li>
						<a href="./viewaccount_getUserInfo.action">
							<i class="icon-home"></i>
							View Customer Account
						</a>
					</li>
					
					<li>
						<a href="./create-employee.jsp">
							<i class="icon-gift"></i>
							Create Employee Account	
						</a>
					</li>
					
					<li>
						<a href="./create-customer.jsp">
							<i class="icon-gift"></i>
							Create Customer Account	
						</a>
					</li>
					
					<li>
						<a href="./create-fund.jsp">
							<i class="icon-gift"></i>
							Create Fund	
						</a>
					</li>
					
					<li>
						<a href="./change-customer-password.jsp">
							<i class="icon-lock"></i>
							Reset Customer Password	
						</a>
					</li>
					
					<li>
						<a href="./deposit-check.jsp">
							<i class="icon-check"></i>
							Deposit Check	
						</a>
					</li>
					
					
					<li class="active">
						<a href="./customertransactionhistory_init.action">
							<i class="icon-check"></i>
							Customer Transaction History	
						</a>
					</li>
					
					<li>
						<a href="./td_init.action">
							<i class="icon-signal"></i>
							Transition Day							
						</a>
					</li>	
				</ul>	
				
				<hr />
				
				<div class="sidebar-extra">
					<p>Contact Us: 1-80-CARNEGIE</p>
				</div> <!-- .sidebar-extra -->
				
				<br />
		
			</div> <!-- /span3 -->
			
			
			
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					<s:property value="#"/> Transaction History				
				</h1>
				
				<div class="widget">
				<div class="widget-header">
					<i class="icon-user"></i>
					<h3>Customer Search</h3>
				</div> <!-- /widget-header -->
				
				<div class="widget-content">
					<div class="tabbable">
							<div class="tab-content">
								<form id="edit-profile" class="form-horizontal" action="customertransactionhistory_init" method="post" >
									<fieldset>
									<br/>
										<div class="control-group">											
											<label class="control-label" for="username">*User Name:</label>
											<div class="controls">
												<input type="text" class="input-large disabled" id="username" name="username" value=""/>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
									</fieldset>
									
									<div class="pull-right">
									<button type="submit" class="btn btn-small btn-warning">
										Search
									</button>
									</div>
									
								</form>
						</div>
					</div>
				</div> <!-- /widget-content -->
			</div> <!-- /widget -->
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>Transaction Details</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>TRANSACTION DATE</th>
									<th>TRANSACTION TYPE</th>
									<th>FUND NAME</th>
									<th>SHARES</th>
									<th>PRICE</th>
									<th>AMOUNT</th>
									<th>STATUS</th>
								</tr>
							</thead>
							
							<tbody>
							<s:iterator value="tranList" var="tran">
								<tr>
									<td><s:property value="#tran.execuateDate"/></td>
									<td><s:if test="%{#tran.transactionType==0}">
										Buy Fund
										</s:if>
										<s:if test="%{#tran.transactionType==1}">
										Sell Fund
										</s:if>
										<s:if test="%{#tran.transactionType==2}">
										Withdrawal Check
										</s:if>
										<s:if test="%{#tran.transactionType==3}">
										Deposit Check
										</s:if>
									</td>	
									<td><s:property value="#tran.fundName"/></td>
									<td>
										<s:property value="#tran.shares"/>
									</td>
									<td>
										<s:property value="#tran.price"/>
									</td> 
									<td>
										<s:property value="#tran.amount"/>
									</td>
									<td><s:if test="%{#tran.status==0}">
										Pending
										</s:if>
										<s:if test="%{#tran.status==1}">
										Success
										</s:if>
										<s:if test="%{#tran.status==2}">
										Failed
										</s:if>
									</td>
								</tr>
							</s:iterator>
							</tbody>
						</table>
					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
					
	
<div id="footer">
	
	<div class="container">				
		<hr />
		<p>&copy; 2014 Seagull Consulting.</p>
	</div> <!-- /container -->
	
</div> <!-- /footer -->


    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>
<script src="./js/excanvas.min.js"></script>
<script src="./js/jquery.flot.js"></script>
<script src="./js/jquery.flot.pie.js"></script>
<script src="./js/jquery.flot.orderBars.js"></script>
<script src="./js/jquery.flot.resize.js"></script>


<script src="./js/bootstrap.js"></script>
<script src="./js/charts/bar.js"></script>

  </body>
</html>