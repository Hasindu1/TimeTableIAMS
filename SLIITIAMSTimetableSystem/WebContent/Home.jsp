<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>SLIIT | IAMS | Instructor Allocation and Management System</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="assetsdash/img/sliitlogo.png" type="image/x-icon"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<script src="../assetsdash/js/plugin/webfont/webfont.min.js"></script>
	

	<link rel="stylesheet" href="assetsdash/css/bootstrap.min.css">
	<link rel="stylesheet" href="assetsdash/css/atlantis.min.css">
	<link href="assetsdash/styles.css" rel="stylesheet" />
	<link href="assetsdash/prism.css" rel="stylesheet" />
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

		
<style>
        .my-card
        {
            position:absolute;
            left:40%;
            top:-20px;
            border-radius:50%;
                  
 }	
 
 .col-md-3{
 
 margin-bottom: 50px;
 margin-top: 30px;
 }

  h4{
 width: 140px;
 height: 80px;
 text-align: justify;
 margin-left: 100px;
 margin-top: 40px;

 }
 h5{
 width: 140px;
 height: 80px;
 text-align: justify;
 margin-left: 100px;
 margin-top: 40px;
font-size: 22px;
 }
	body{
background: linear-gradient(0.25turn, #195190FF,#A2A2A1FF);

}
.jumbotron{
background: linear-gradient(0.25turn, #195190FF,#A2A2A1FF);

 height: 80px;
   }
.namesliit{
margin-left: 10px;

}
.tclr{

color: #293f54;
}
   
    </style>


	
	
</head>
<body>
	<div class="wrapper">
		<div class="main-header">
	
			<nav class="navbar navbar-header navbar-expand-lg" data-background-color="light-blue2">
				<div class="container-fluid">
				<image src="assets/img/SLIIT_Logo.png" width="35" height="40" ></image> 
				<label class="namesliit"><b class="tclr">SLIIT | Instructors Allocation and  Management System</b></label>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
					
							<li class="nav-item">
							<a class="nav-link" onclick="window.location='Home.jsp'">
								Home
							</a>
						</li>
							<li class="nav-item">
							<a class="nav-link"  onclick="window.location='ViewTimeTableServelet'">
								TimeTables
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" onclick="window.location='EmployeeList.jsp'">
								Employee
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link"  onclick="window.location='WorkingTimes.jsp'">
								WorkingTimes
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" onclick="window.location='Modules.jsp'">
								Module
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" onclick="window.location='AcademicGroups.jsp'">
								Groups
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" onclick="window.location='Halls.jsp'">
								Halls
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link"   onclick="window.location='Comments.jsp'">
								Comments
							</a>
						</li>
						
							<li class="nav-item">
							<a class="nav-link" onclick="window.location='Profile.jsp'">
								Profile
							</a>
						</li>
						
							<li class="nav-item">
							<a class="nav-link" href="https://courseweb.sliit.lk/course/index.php?categoryid=1708'">
								CourseWeb
							</a>
						</li>
						
					</ul>
				</div>
			</nav>
		</div>

<!-- Body of body -->

<div class="jumbotron">
<div class="jumbotron" class="wrapper">
<div class="row w-100">
        <div class="col-md-3" >
            <div class="card border-primary mb-3"  onclick="window.location='EmployeeList.jsp'" >
           
                <div class="card border-info shadow text-info p-3 my-card" ><span class="fa fa-user" aria-hidden="true"></span></div>
                <div class="text-info text-center mt-3"><h4>Employee</h4></div>
         
            </div>
        </div>
        <div class="col-md-3">
            <div class="card border-secondary mb-3" onclick="window.location='Modules.jsp'" >
                <div class="card border-secondary shadow text-secondary p-3 my-card"><span class="fa fa-file-text-o" aria-hidden="true"></span></div>
                <div class="text-secondary text-center mt-3" ><h4>Modules</h4></div>
             
            </div>
        </div>
          <div class="col-md-3">
            <div class="card border-success mb-3" onclick="window.location='Halls.jsp'" >
                <div class="card border-success shadow text-success p-3 my-card"><span class="fa fa-building" aria-hidden="true"></span></div>
                <div class="text-success text-center mt-3"><h4>Halls</h4></div>
            
            </div>
        </div>
       
        
         <div class="col-md-3">
            <div class="card border-danger mb-3" onclick="window.location='AcademicGroups.jsp'" >
                <div class="card border-danger shadow text-danger p-3 my-card" ><span class="fa fa-users" aria-hidden="true"></span></div>
                <div class="text-danger text-center mt-3"><h4>Groups</h4></div>
              
            </div>
        </div>
          <div class="col-md-3">
            <div  class="card border-info mb-3" onclick="window.location='WorkingTimes.jsp'" >
                <div class="card border-info  shadow text-info  p-3 my-card"><span class="fa fa-clock-o" aria-hidden="true"></span></div>
                <div class="text-info text-center mt-3"><h5>Working Times </h5></div>
            
            </div>
        </div>
          <div class="col-md-3">
            <div class="card border-warning mb-3" onclick="window.location='Profile.jsp'">
                <div class="card border-warning shadow text-warning p-3 my-card" ><span class="fa fa-user-circle-o" aria-hidden="true"></span></div>
                <div class="text-warning text-center mt-3"><h4>Profile</h4></div>
                
            </div>
        </div>
        <div class="col-md-3">
            <div class="card border-secondary mb-3" onclick="window.location='TimeTables.jsp'">
                <div class="card border-secondary shadow text-secondary p-3 my-card" ><span class="fa fa-calendar" aria-hidden="true"></span></div>
                <div class="text-secondary text-center mt-3"><h4>Time Tables</h4></div>
              
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card border-dark mb-3" onclick="window.location='Comments.jsp'">
                <div class="card border-dark shadow text-dark p-3 my-card" ><span class="fa fa-comments" aria-hidden="true"></span></div>
                <div class="text-dark text-center mt-3"><h4>Comments</h4></div>
                
            </div>
        </div>
     </div>
</div>
</div>


</div>

</body>
<script src="../assets/js/core/jquery.3.2.1.min.js"></script>
<script src="../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
<script src="../assets/js/core/popper.min.js"></script>
<script src="../assets/js/core/bootstrap.min.js"></script>
<script src="../assets/js/plugin/chart.js/chart.min.js"></script>
<script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script src="../assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script type="text/javascript" src="../assets/js/plugin/jqvmap/jquery.vmap.min.js"></script>
<script type="text/javascript" src="../assets/js/plugin/jqvmap/maps/jquery.vmap.world.js" charset="utf-8"></script>
<script src="../assets/js/plugin/chart-circle/circles.min.js"></script>
<script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="../assets/js/atlantis.min.js"></script>
<script src="assets/prism.js"></script>
<script src="assets/prism-normalize-whitespace.min.js"></script>
<script type="text/javascript">
	// Optional
	Prism.plugins.NormalizeWhitespace.setDefaults({
		'remove-trailing': true,
		'remove-indent': true,
		'left-trim': true,
		'right-trim': true,
	});
	
	// handle links with @href started with '#' only
	$(document).on('click', 'a[href^="#"]', function(e) {
		// target element id
		var id = $(this).attr('href');

		// target element
		var $id = $(id);
		if ($id.length === 0) {
			return;
		}

		// prevent standard hash navigation (avoid blinking in IE)
		e.preventDefault();

		// top position relative to the document
		var pos = $id.offset().top - 80;

		// animated top scrolling
		$('body, html').animate({scrollTop: pos});
	});
</script>
</html>