<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<!-- Mirrored from www.keenthemes.com/preview/metronic/theme/templates/admin4/form_layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Oct 2015 10:03:07 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<script>
		var resizefunc = [];

		function loadcountry() {
			var country=document.getElementById("country").value;
			
			alert("Subject is :"+country);

			var xmlhttp = new XMLHttpRequest();
			//			removeAllState();

			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) {

					var jsonObj = JSON.parse(xmlhttp.responseText);
					alert("springify :: " + JSON.stringify(jsonObj));
					alert("123");
					
					for (i = 0; i < jsonObj.length; i++) {

						var createInput = document.createElement("input");

						//createInput.name = jsonObj[i].doctorName;
						//createInput.value = jsonObj[i].amoDoctorCode;
						alert("value : " + jsonObj[i].countryID + "  name :"
								+ jsonObj[i].countryName);
						//document.doctorForm.amoDoctorName.add(createInput);
						var docid = document.getElementById("countryID");
						alert("the id got is" +docid);
						docid.value = jsonObj[i].countryID;
					}
				}
			}
			xmlhttp
					.open(
							"get",
							"${pageContext.request.contextPath}/countryController?flag=countryid&country="+country, true);
			xmlhttp.send();
		}
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */

		/* 	function removeAllState() {
				var removeState = document.cityForm.stateId.options.length;
				for (i = removeState; i > 0; i--) {
					document.cityForm.stateId.remove(i);
				}
			} */
	</script>

<head>
<meta charset="utf-8"/>
<title>Metronic | Form Stuff - </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<jsp:include page="header.jsp"></jsp:include>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
						
						<div class="tab-content">
							<div class="tab-pane active" id="tab_0">
								<div class="portlet box green">
									<div class="portlet-title">
										<div class="caption">
											<i class="fa fa-gift"></i>Add State
										</div>
										
									</div>
									<div class="portlet-body form">
										<!-- BEGIN FORM-->
										
										<form action="<%=request.getContextPath()%>/countryController?flag=addstate" method="post" class="form-horizontal">
											<div class="form-body">
											<div class="form-group">
													<label class="col-md-3 control-label">Select Country</label>
													<div class="col-md-4">
														<!-- <input type="text" class="form-control input-circle" placeholder="Enter text"> -->
														
														<select class="form-control input-circle" onchange="loadcountry()" id="country" name="subjectName">
														<option>Select Country</option>
														<c:forEach items="${sessionScope.country}" var="i">
														<option value="${i.countryName}">${i.countryName}</option>
														</c:forEach>
														</select>
													</div>
												</div>
											
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">Add Country Code</label>
													<div class="col-md-4">
														<input type="text" class="form-control input-circle" id="countryID" readonly="readonly" name="countryCode" placeholder="Enter text">
													</div>
												</div>
											</div>
											
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">Add State Name</label>
													<div class="col-md-4">
														<input type="text" class="form-control input-circle" name="stateName" placeholder="Enter text">
													</div>
												</div>
											</div>
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">Add State Code</label>
													<div class="col-md-4">
														<input type="text" class="form-control input-circle"  name="stateCode" placeholder="Enter text">
													</div>
												</div>
											</div>
											<div class="form-actions">
												<div class="row">
													<div class="col-md-offset-3 col-md-9">
														<button type="submit" class="btn btn-circle blue">Submit</button>
														<button type="button" class="btn btn-circle default">Cancel</button>
													</div>
												</div>
											</div>
											</div>
										</form>
										
										<!-- END FORM-->
									</div>
								</div>	
							</div>
							
							
							
							
							
							
							
							
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/form-samples.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<script>
$("#maincat").click(function(){
	if($(this). prop("checked") == true){
		$("#drpdwn").attr("style","display: none;");
		}
		else if($(this). prop("checked") == false){
			$("#drpdwn").removeAttr("style","display: block;");
		}
});
</script>

<script>
jQuery(document).ready(function() {    
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
   FormSamples.init();
});
</script>
<!-- END JAVASCRIPTS -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-37564768-1', 'keenthemes.com');
  ga('send', 'pageview');
</script>
</body>

<!-- END BODY -->

<!-- Mirrored from www.keenthemes.com/preview/metronic/theme/templates/admin4/form_layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Oct 2015 10:03:07 GMT -->
</html>