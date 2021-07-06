<!DOCTYPE html>
<%@page import="iams.modal.Halls"%>
<%@page import="java.util.ArrayList"%>
<%@page import="iams.dao.HallDao"%>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>SLIIT | IAMS | Instructor Allocation and Management
	System</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link rel="icon" href="assetsdash/img/sliitlogo.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<script src="../assetsdash/js/plugin/webfont/webfont.min.js"></script>


<link rel="stylesheet" href="assetsdash/css/bootstrap.min.css">
<link rel="stylesheet" href="assetsdash/css/atlantis.min.css">
<link href="assetsdash/styles.css" rel="stylesheet" />
<link href="assetsdash/prism.css" rel="stylesheet" />

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.0/bootstrap-table.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.9.1/extensions/editable/bootstrap-table-editable.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.9.1/extensions/export/bootstrap-table-export.js"></script>
<script
	src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.9.1/extensions/filter-control/bootstrap-table-filter-control.js"></script>

<link href="assets/css/table.css" rel="stylesheet" />
<link href="assets/css/tablenew.css" rel="stylesheet" />



<style>
.table-wrapper {
	width: 1300px;
	margin: auto;
	background: #fff;
	padding: 2px;
	table-layout: auto;
	margin-left: -80px;
}
</style>

<style>
.namesliit {
	margin-left: 10px;
}

.tclr {
	color: #293f54;
}
<!--
----
Popup


 


--------
-->
</style>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* The popup form - hidden by default */
.form-popup {
	display: none;
	position: fixed;
	bottom: 80px;
	right: 40px;
	border: 3px solid #f1f1f1;
	z-index: 1; /* Sit on top */
	right: 110px;
	top: 0;
	background-color: #a9cddb;
	overflow: auto; /* Enable scroll if needed */
	margin-top: 150px;
	max-width: 450px;
	padding: 30px;
}

}

/* Add styles to the form container */
.form-container {
	max-width: 600px;
	padding: 20px;
	background-color: #cbcff7;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	border: none;
	background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus
	{
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	height: 50px;
	margin-bottom: 10px;
	opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
	background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
	opacity: 1;
}
</style>


</head>
<body>

	<div class="wrapper">
		<div class="main-header">

			<nav class="navbar navbar-header navbar-expand-lg"
				data-background-color="light-blue2">
				<div class="container-fluid">
					<image src="assets/img/SLIIT_Logo.png" width="35" height="40"></image>
					<label class="namesliit"><b class="tclr">SLIIT |
							Instructors Allocation and Management System</b></label>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='Home.jsp'"> Home </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='TimeTables.jsp'"> TimeTables </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='EmployeeList.jsp'"> Employee </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='WorkingTimes.jsp'"> WorkingTimes </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='Modules.jsp'"> Module </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='AcademicGroups.jsp'"> Groups </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='Halls.jsp'"> Halls </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='Comments.jsp'"> Comments </a></li>
						<li class="nav-item"><a class="nav-link"
							onclick="window.location='Profile.jsp'"> Profile </a></li>

						<li class="nav-item"><a class="nav-link"
							href="https://courseweb.sliit.lk/course/index.php?categoryid=1708'">
								CourseWeb </a></li>


					</ul>
				</div>
			</nav>
		</div>
		<!-- Table -->

		<div>

			<nav class="navbar navbar-header navbar-expand-lg"
				data-background-color="light-blue2">
				<div class="container-fluid">
					<image src="assets/img/SLIIT_Logo.png" width="35" height="40"></image>
					<label class="namesliit"><b class="tclr">SLIIT |
							Instructors Allocation and Management System</b></label>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">

						<li class="nav-item"><a class="nav-link"> Home </a></li>
						<li class="nav-item"><a class="nav-link"> TimeTables </a></li>
						<li class="nav-item"><a class="nav-link"> Employee </a></li>
						<li class="nav-item"><a class="nav-link"> WorkingTimes </a></li>
						<li class="nav-item"><a class="nav-link"> Module </a></li>
						<li class="nav-item"><a class="nav-link"> Groups </a></li>
						<li class="nav-item"><a class="nav-link"> Halls </a></li>
						<li class="nav-item"><a class="nav-link"> Comments </a></li>

						<li class="nav-item"><a class="nav-link"> CourseWeb </a></li>


					</ul>
				</div>
			</nav>

			<div class="table-title">
				<div class="main-header"
					class="navbar navbar-header navbar-expand-lg"
					data-background-color="light-blue2">
					<h2>
						<b> Halls Details</b>

						<button type="button" class="btn btn-success add-new"
							onclick="openForm()">Add New</button>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="form-popup" id="myForm">
			<form class="form-container" name="signupform" action="HallServelet"
				method="post">
				<h1>Add Halls</h1>

				<label for="hallid"><b>Hall Id</b></label> <input type="text"
					placeholder="Enter Hall Id" name="hallId" required> <label
					for="hallname"><b>Hall Name</b></label> <input type="text"
					placeholder="Enter Hall Name" name="hallName" required> <label
					for="building"><b>Building</b></label> <input type="text"
					placeholder="Enter Building Name" name="building" required>

				<label for="floor"><b>Floor</b></label> <input type="text"
					placeholder="Enter Floor" name="floor" required> <label
					for="maxCapacitye"><b>Max Capacity</b></label> <input type="text"
					placeholder="Enter Max Capacity" name="maxCapacity" required>


				<label for="type"><b>Type</b></label> <select class="form-control"
					name="type" required><option>Lab</option>
					<option>Lecture Hall</option>
					<option>Other</option>
				</select></br>

				<button type="submit" class="btn" onclick="saveForm()">Save</button>
				<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
			</form>
		</div>


		<div class="container">
			<div class="table-wrapper">


				<table id="table" data-toggle="table" data-search="true"
					data-filter-control="true" data-show-export="true"
					data-click-to-select="true" data-toolbar="#toolbar"
					class="table-wrapper">
					<thead>
						<tr>


							<th data-field="hallid" data-filter-control="input"
								data-sortable="true">Hall Id</th>
							<th data-field="hallname" data-filter-control="input"
								data-sortable="true">Hall Name</th>
							<th data-field="building" data-filter-control="input"
								data-sortable="true">Building</th>
							<th data-field="floor" data-filter-control="input"
								data-sortable="true">Floor</th>
							<th data-field="maxcapacity" data-filter-control="input"
								data-sortable="true">Max Capacity</th>
							<th data-field="type" data-filter-control="select"
								data-sortable="true">Type</th>



						</tr>
					</thead>

					<%
						HallDao hall = new HallDao();
						ArrayList<Halls> halls = hall.getHalls();

						for (Halls h : halls) {
					%>
					<tr>


						<td><%=h.getHallId()%></td>
						<td><%=h.getHallName()%></td>
						<td><%=h.getBuilding()%></td>
						<td><%=h.getFloor()%></td>
						<td><%=h.getMaxCapacity()%></td>
						<td><%=h.getType()%></td>
						
						<form method="POST" action="EditHall">
						<td><button class="btn btn-info" type="submit" name="btn_edit" value=<%=h.getHallId()%>>Edit</button></td>
						</form>
						
						<form method="POST" action="DeleteHallServelet">
							<td><button type="submit" class="btn btn-danger"
									name="btn_delete" value=<%=h.getHallId()%>>Delete</button></td>
						</form>

					</tr>


					<%
						}
					%>

				</table>

			</div>
		</div>

		<!-- Table close -->
<!-- 
		<div class="form-popup" id="myFormEdit">
			<form class="form-container" action="EditHallServelet" method="post">
				<h1>Edit Halls</h1>

				<label for="hallid"><b>Hall Id</b></label> <input type="text"
					placeholder="Enter Hall Id" name="hallId1" required> <label
					for="hallname"><b>Hall Name</b></label> <input type="text"
					placeholder="Enter Hall Name" name="hallName1" required> <label
					for="building"><b>Building</b></label> <input type="text"
					placeholder="Enter Building Name" name="building1" required>

				<label for="floor"><b>Floor</b></label> <input type="text"
					placeholder="Enter Floor" name="floor1" required> <label
					for="maxCapacitye"><b>Max Capacity</b></label> <input type="text"
					placeholder="Enter Max Capacity" name="maxCapacity1" required>


				<label for="type"><b>Type</b></label> <select class="form-control"
					name="type" required><option>Lab</option>
					<option>Lecture Hall</option>
					<option>Other</option>
				</select></br>

				<button type="submit" class="btn" onclick="saveForm()">Edit</button>
				<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
			</form>
		</div> -->

	</div>


	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";

		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}

		function saveForm() {

			window.location.href = 'Halls.jsp';
		}
	</script>
</body>


</html>