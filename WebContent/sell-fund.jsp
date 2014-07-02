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
			
			<a class="brand" href="./viewaccount_init.action">Carnegie Financial Services</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${sessionScope.userName} <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="viewaccount_init.action"><i class="icon-user"></i> View Account  </a>
							</li>
							
							<li>
								<a href="changecustomerpassword_init"><i class="icon-lock"></i> Change Password</a>
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
						<span class="account-name" >${firstName} ${lastName}</span>
						<span class="account-role">Balance: ${balance}</span>
						<span class="account-role">Frozen: ${frozen}</span>
						<span class="account-role">Available: ${available}</span>
					</div> <!-- /account-details -->
				
				</div> <!-- /account-container -->
				
				<hr />
				
				<ul id="main-nav" class="nav nav-tabs nav-stacked">
					
					<li>
						<a href="./viewaccount_init.action">
							<i class="icon-home"></i>
							My Account 		
						</a>
					</li>
					
					<li>
						<a href="./buyfund_init.action">
							<i class="icon-gift"></i>
							Buy Fund	
						</a>
					</li>
					
					<li class="active">
						<a href="./sellfund_init.action">
							<i class="icon-file"></i>
							Sell Fund	
						</a>
					</li>
					
					<li>
						<a href="./requestcheck_init.action">
							<i class="icon-check"></i>
							Request Check	
						</a>
					</li>
					
					<li>
						<a href="./transactionhistory_init.action">
							<i class="icon-time"></i>
							Transaction History	
						</a>
					</li>
					
					<li>
						<a href="./fr_getFundList.action">
							<i class="icon-signal"></i>
							Research Fund							
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
						<i class="icon-home"></i> Sell Fund
					</h1>
					
					
			<span id="feedback1" style="color: red">${feedback1} </span>
			<span id="feedback" style="color: blue">${feedback2} </span>
				<div class="widget">
					<div class="widget-header">
					<i class="icon-user"></i>
					<h3>Select Fund</h3>
			
			
					</div> <!-- /widget-header -->
					<div class="widget-content">
					<br/>
													
							<form action="sellfund_fundSearch" class="form-horizontal"
								method="post">
								Select the fund you want to sell:&nbsp;&nbsp;&nbsp;
								<select id="myList" onchange="selectFund()">
								<option></option> 
									<s:iterator value="fundVos" status="stuts">
										<option>
											<s:property value="fundName" />
											
										</option>
										</s:iterator>
								</select>
								<input type="hidden" class="input-medium disabled" id="fundName" name="fundName"/>
									
								&nbsp;&nbsp;&nbsp;
								<button type="submit" class="btn btn-small btn-warning">Select</button>
							</form>
					</div>
					<br/>
					
					<div id="hideDiv">
					<div class="widget-header">
					<i class="icon-gift"></i>
					<h3>Sell Fund</h3>
			
			
					</div> <!-- /widget-header -->
					<div class="widget-content">
					<form action="sellfund_sellFund" class="form-horizontal" onsubmit="return sell()" method="post"  >
					<table class="table table-striped table-bordered">
							<thead>
								<tr>

									<th>FUND NAME</th>
									<th>FUND TICKER</th>
									<th>FUND PRICE</th>
									<th>SHAREHOLDINGS</th>
									<th>SELL</th>
								</tr>
							</thead>
							
							
							

							<tbody>
							
								<tr>

									<td style="padding-top:13px;">${fundVo.fundName }</td>
									<td style="padding-top:13px;">${fundVo.ticker }</td>
									<td style="text-align: right; padding-right: 20px;padding-top:13px;"> ${
										fundVo.newPrice }</td>
									<td style="padding-top:13px;text-align: right">${fundVo.newShare }</td>
									<td>
									<input type="hidden" name="positionId" value=${ fundVo.positionId } />
									<input type="text" name="sellsharesStr" id="sellsharesStr" style="height:18px;margin-top:0px"/> shares
										<button type="submit" class="btn btn-small btn-warning">Sell</button>
									</td>
								</tr>
							
							</tbody>
							
						</table>
						</form>
					
					</div>
					</div>
					
					


					</div>
					<!-- /widget -->

				</div>
			
			
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


<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/login.js" type="text/javascript"></script> 
<script>

		jQuery(document).ready(function() {     
		  SellFund.init(); 

		});
		
		function selectFund() {
			
			var mylist = document.getElementById("myList");
			document.getElementById("fundName").value = mylist.options[mylist.selectedIndex].text;
			//BuyFund.fundSearch();
			/* alert(document.getElementById("fundName").value); */
		}
</script>

</body>
</html>