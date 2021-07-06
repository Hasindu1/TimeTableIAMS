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

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


<link href="assets/css/employee_table.css" rel="stylesheet" />

<style >
	.namesliit{
margin-left: 10px;

}



 
	</style>


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  margin-left: 5px;
  margin-right: 5px;
margin-top: 7px;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
  margin-left: 5px;
  margin-right: 5px;
 }
 
 .table-m{
 	width: 80%;
 	border-collapse: collapse;
 	margin-top: 50px;
 	margin-bottom: 50px;
 }
 
 .table-head{
 font-weight: bold;
 text-align: center;
 border-style: solid;
 }
 
 .table-m tr td{
 	border-style: solid;
 }
/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #04AA6D;
}


.bplace{
margin-left: 100px;
margin-top: 1000px;

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
							<a class="nav-link"  onclick="window.location='TimeTables.jsp'">
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
<!-- Table -->

 <div>
 
 	<nav class="navbar navbar-header navbar-expand-lg" data-background-color="light-blue2">
				<div class="container-fluid">
				<image src="assets/img/SLIIT_Logo.png" width="35" height="40" ></image> 
					<label class="namesliit"><b class="tclr">SLIIT | Instructors Allocation and  Management System</b></label>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
					
							<li class="nav-item">
							<a class="nav-link">
								Home
							</a>
						</li>
							<li class="nav-item">
							<a class="nav-link">
								TimeTables
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link">
								Employee
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link">
								WorkingTimes
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link">
								Module
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link">
								Groups
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link">
								Halls
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link">
								Comments
							</a>
						</li>
						
							<li class="nav-item">
							<a class="nav-link">
								CourseWeb
							</a>
						</li>
						
						
					</ul>
				</div>
			</nav>
			
			    <div   class="table-title"  >
              <div class="main-header" class="navbar navbar-header navbar-expand-lg" data-background-color="light-blue2" >
                    <h2><b> Timetable Allocation</b></h2>
                        
                    </div>
            </div >   
 </div>
            
 
 <div class="container" >
 
 <!-- Body  -->
		   
	 
<!-- Form one to check lecture -->

<!-- Form one start -->

<form class="form-inline" style="margin-top:10px;">
  
  
  <div class="form-group mx-sm-3 mb-2">
    <label >Enter Lecture Name</label>
   
  </div>
  
  <button type="submit" class="btn btn-info mb-2">Check</button>
</form>
	
<!-- Form one end -->

<!-- Form two to allocate times -->
<!-- Form two start -->
<!-- Steps -->

  
  <!-- Close Steps -->
<!--   <form action="" id="timetableForm"> -->
 <div class="tab" >
  <button class="tablinks" onclick="openCity(event, 'Monday')">Monday</button>
  <button class="tablinks" onclick="openCity(event, 'Tuesday')">Tuesday</button>
  <button class="tablinks" onclick="openCity(event, 'Wednesday')">Wednesday</button>
  <button class="tablinks" onclick="openCity(event, 'Thursday')">Thursday</button>
  <button class="tablinks" onclick="openCity(event, 'Friday')">Friday</button>
  <button class="tablinks" onclick="openCity(event, 'Saturday')">Saturday</button>
  <button class="tablinks" onclick="openCity(event, 'Sunday')">Sunday</button>
</div>

<div id="Monday" class="tabcontent">
  <h3>Monday</h3>
  
       <div class="form-row">
    <div class="col">
      <input type="text" class="form-control" placeholder="Instructor">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Module">
    </div>
      <div class="col">
      <input type="text" class="form-control" placeholder="Location">
    </div>
      <div class="col">
      <input type="text" class="form-control" placeholder="Start Time">
    </div>
     <div class="col">
      <input type="text" class="form-control" placeholder="End Time">
    </div>
  </div>
     
    
</div>

<div id="Tuesday" class="tabcontent">
  <h3>Tuesday</h3>
  
</div>


<div id="Wednesday" class="tabcontent">
  <h3>Wednesday</h3>
  
</div>


<div id="Thursday" class="tabcontent">
  <h3>Thursday</h3>
  
</div>

<div id="Friday" class="tabcontent">
  <h3>Friday</h3>
  
</div>

<div id="Saturday" class="tabcontent">
  <h3>Saturday</h3>
  
</div>

<div id="Sunday" class="tabcontent">
  <h3>Sunday</h3>
  
</div>

<table class="table-m" id="table-m">
	<tr class="table-head">
	<td onclick="getRow(1);"><button>Monday</button></td>
	<td>Tuesday</td>
	<td>Wednesday</td>
	<td>Thrsday</td>
	<td>Friday</td>
	</tr>
</table>



  <button type="submit" class="btn btn-success">Save</button>
  <button type="button" class="btn btn-danger" onclick="closeForm()">Close</button>
   
 
<!--  </form> -->


<!-- Form two end -->
<!-- Form close -->
 
 
      
    </div>     
</div>

</body>
<script>
function getRow(x){
	 var t = document.getElementById("table-m");
	var h = document.createElement("h4");
	h.innerHTML = x;
	var row = document.createElement("tr");
	var data = document.createElement("td");
	data.appendChild(h);
// 	data.style.column-span = 4;
	row.appendChild(data);
	t.appendChild(row); 
	
}

function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
 for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  } 
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}



function closeForm() {
	document.getElementById("timetableForm").style.display = "none";
}
</script>

</html>