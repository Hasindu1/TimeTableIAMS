
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta name="author" content="Hasindu Dahanayake">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>SLIIT | IAMS | Instructor Allocation and Management
	System</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link rel="icon" href="assetsdash/img/sliitlogo.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<link rel="stylesheet" href="assetsdash/css/bootstrap.min.css">
<link rel="stylesheet" href="assetsdash/css/atlantis.min.css">
<link href="assetsdash/styles.css" rel="stylesheet" />
<link href="assetsdash/prism.css" rel="stylesheet" />

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link href="assets/css/employee_table.css" rel="stylesheet" />

<style>
.namesliit {
	margin-left: 10px;
}
</style>


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial;
}

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

.table-m {
	width: 80%;
	border-collapse: collapse;
	margin-top: 50px;
	margin-bottom: 50px;
}

.table-head {
	font-weight: bold;
	text-align: center;
	border-style: solid;
}

.table-m tr td {
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

.bplace {
	margin-left: 100px;
	margin-top: 1000px;
}

.dropdown-timetable {
	
}

.dropdown-timetable:focus {
	border: 1px solid cornflowerblue !important;
}

td {
	text-align: center;
	vertical-align: middle;
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
							onclick="window.location='ViewTimeTableServelet'"> TimeTables
						</a></li>
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
						<b> Timetable Allocation</b>
					</h2>

				</div>
			</div>
		</div>


		<div class="container">

			<!-- Body  -->


			<!-- Form one to check lecture -->

			<!-- Form one start -->

			<form class="form-inline" style="margin-top: 10px;" action="">


				<div class="form-group mx-sm-3 mb-2">
					<label>Select Lecturer Name</label>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-instructor" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="instructor">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Lecturer</option>
								<c:forEach items="${listInstructor}" var="instructor">

									<a class="dropdown-item" href="#"><option
											value="${instructor.iname}">${instructor.iname}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<button type="button" class="btn btn-success"
						onclick="showTimeTableByLecturerAndDay();">Show Timetable</button>
				</div>


			</form>


			<!-- Form one end -->

			<!-- Form two to allocate times -->
			<!-- Form two start -->
			<!-- Steps -->


			<!-- Close Steps -->
			<!--   <form action="" id="timetableForm"> -->
			<div class="tab">
				<button class="tablinks" onclick="openTimeTable(event, 'Monday')">Monday</button>
				<button class="tablinks" onclick="openTimeTable(event, 'Tuesday')">Tuesday</button>
				<button class="tablinks" onclick="openTimeTable(event, 'Wednesday')">Wednesday</button>
				<button class="tablinks" onclick="openTimeTable(event, 'Thursday')">Thursday</button>
				<button class="tablinks" onclick="openTimeTable(event, 'Friday')">Friday</button>
				<button class="tablinks" onclick="openTimeTable(event, 'Saturday')">Saturday</button>
				<button class="tablinks" onclick="openTimeTable(event, 'Sunday')">Sunday</button>
			</div>

			<div id="Monday" class="tabcontent">
				<h3>Monday &nbsp;&nbsp;</h3>

				<div class="form-row">
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-module-monday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="module">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Module</option>
								<c:forEach items="${listModule}" var="module">

									<a class="dropdown-item" href="#"><option
											value="${module.modulecode}">${module.moduleName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-tag-monday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="tag">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Tag</option>


								<a class="dropdown-item" href="#"><option value="Lecture">Lecture</option></a>
								<a class="dropdown-item" href="#"><option value="Tutorial">Tutorial</option></a>
								<a class="dropdown-item" href="#"><option value="Lab">Lab</option></a>
								<a class="dropdown-item" href="#"><option value="Other">Other</option></a>




							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-batch-monday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="group">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Batch</option>
								<c:forEach items="${listBatch}" var="batch">

									<a class="dropdown-item" href="#"><option
											value="${batch.batchId}">${batch.batchId}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>





					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-hall-monday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="hall">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Location</option>
								<c:forEach items="${listHall}" var="hall">

									<a class="dropdown-item" href="#"><option
											value="${hall.hallId}">${hall.hallName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>

					<div class="col">

						<select class="form-control py-2" id="select-start-time-monday">
							<option selected="selected">Start Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>

					<div class="col">

						<select class="form-control  py-2" id="select-end-time-monday">

							<option selected="selected">End Time</option>
							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>


				</div>
				<br>
				<button type="button" class="btn btn-success"
					onclick="saveTimeTable();">Save</button>



				<table class="table-m" id="table-monday">
					<tr class="table-head">
						<th>Module</th>
						<th>Group</th>
						<th>Tag</th>
						<th>Location</th>
						<th>Start Time</th>
						<th>End Time</th>
					</tr>
				</table>

			</div>

			<div id="Tuesday" class="tabcontent">
				<h3>Tuesday</h3>
				<div class="form-row">
					<div class="col dropdown">


						<select id="select-module-tuesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false" name="module">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Module</option>
								<c:forEach items="${listModule}" var="module">

									<a class="dropdown-item" href="#"><option
											value="${module.modulecode}">${module.moduleName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select id="select-tag-tuesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false" name="tag">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Tag</option>


								<a class="dropdown-item" href="#"><option value="Lecture">Lecture</option></a>
								<a class="dropdown-item" href="#"><option value="Tutorial">Tutorial</option></a>
								<a class="dropdown-item" href="#"><option value="Lab">Lab</option></a>
								<a class="dropdown-item" href="#"><option value="Other">Other</option></a>




							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select id="select-batch-tuesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false" name="group">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Batch</option>
								<c:forEach items="${listBatch}" var="batch">

									<a class="dropdown-item" href="#"><option
											value="${batch.batchId}">${batch.batchId}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>





					<div class="col dropdown">


						<select id="select-hall-tuesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false" name="hall">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Location</option>
								<c:forEach items="${listHall}" var="hall">

									<a class="dropdown-item" href="#"><option
											value="${hall.hallId}">${hall.hallName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>

					<div class="col">

						<select class="form-control py-2" id="select-start-time-tuesday">
							<option selected="selected">Start Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>

					<div class="col">

						<select class="form-control  py-2" id="select-end-time-tuesday">
							<option selected="selected">End Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>


				</div>
				<br>
				<button type="submit" class="btn btn-success"
					onclick="saveTimeTable();">Save</button>


				<table class="table-m" id="table-tuesday">
					<tr class="table-head">
						<th>Module</th>
						<th>Group</th>
						<th>Tag</th>
						<th>Location</th>
						<th>Start Time</th>
						<th>End Time</th>
					</tr>
				</table>

			</div>


			<div id="Wednesday" class="tabcontent">
				<h3>Wednesday</h3>
				<div class="form-row">
					<div class="col dropdown">


						<select id="select-module-wednesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="module">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Module</option>
								<c:forEach items="${listModule}" var="module">

									<a class="dropdown-item" href="#"><option
											value="${module.modulecode}">${module.moduleName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select id="select-tag-wednesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="tag">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Tag</option>


								<a class="dropdown-item" href="#"><option value="Lecture">Lecture</option></a>
								<a class="dropdown-item" href="#"><option value="Tutorial">Tutorial</option></a>
								<a class="dropdown-item" href="#"><option value="Lab">Lab</option></a>
								<a class="dropdown-item" href="#"><option value="Other">Other</option></a>




							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select id="select-batch-wednesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="group">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Batch</option>
								<c:forEach items="${listBatch}" var="batch">

									<a class="dropdown-item" href="#"><option
											value="${batch.batchId}">${batch.batchId}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>





					<div class="col dropdown">


						<select id="select-hall-wednesday"
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="hall">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Location</option>
								<c:forEach items="${listHall}" var="hall">

									<a class="dropdown-item" href="#"><option
											value="${hall.hallId}">${hall.hallName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>

					<div class="col">

						<select class="form-control py-2" id="select-start-time-wednesday">
							<option selected="selected">Start Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>

					<div class="col">

						<select class="form-control  py-2" id="select-end-time-wednesday">
							<option selected="selected">End Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>


				</div>
				<br>
				<button type="submit" class="btn btn-success"
					onclick="saveTimeTable();">Save</button>



				<table class="table-m" id="table-wednesday">
					<tr class="table-head">
						<th>Module</th>
						<th>Group</th>
						<th>Tag</th>
						<th>Location</th>
						<th>Start Time</th>
						<th>End Time</th>
					</tr>
				</table>

			</div>


			<div id="Thursday" class="tabcontent">
				<h3>Thursday</h3>
				<div class="form-row">
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-module-thursday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="module">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Module</option>
								<c:forEach items="${listModule}" var="module">

									<a class="dropdown-item" href="#"><option
											value="${module.modulecode}">${module.moduleName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-tag-thursday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="tag">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Tag</option>


								<a class="dropdown-item" href="#"><option value="Lecture">Lecture</option></a>
								<a class="dropdown-item" href="#"><option value="Tutorial">Tutorial</option></a>
								<a class="dropdown-item" href="#"><option value="Lab">Lab</option></a>
								<a class="dropdown-item" href="#"><option value="Other">Other</option></a>




							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-batch-thursday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="group">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Batch</option>
								<c:forEach items="${listBatch}" var="batch">

									<a class="dropdown-item" href="#"><option
											value="${batch.batchId}">${batch.batchId}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>





					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-hall-thursday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="hall">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Location</option>
								<c:forEach items="${listHall}" var="hall">

									<a class="dropdown-item" href="#"><option
											value="${hall.hallId}">${hall.hallName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>

					<div class="col">

						<select class="form-control py-2" id="select-start-time-thursday">
							<option selected="selected">Start Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>

					<div class="col">

						<select class="form-control  py-2" id="select-end-time-thursday">
							<option selected="selected">End Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>


				</div>
				<br>
				<button type="submit" class="btn btn-success"
					onclick="saveTimeTable();">Save</button>



				<table class="table-m" id="table-thursday">
					<tr class="table-head">
						<th>Module</th>
						<th>Group</th>
						<th>Tag</th>
						<th>Location</th>
						<th>Start Time</th>
						<th>End Time</th>
					</tr>
				</table>

			</div>

			<div id="Friday" class="tabcontent">
				<h3>Friday</h3>
				<div class="form-row">
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-module-friday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="module">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Module</option>
								<c:forEach items="${listModule}" var="module">

									<a class="dropdown-item" href="#"><option
											value="${module.modulecode}">${module.moduleName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-tag-friday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="tag">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Tag</option>


								<a class="dropdown-item" href="#"><option value="Lecture">Lecture</option></a>
								<a class="dropdown-item" href="#"><option value="Tutorial">Tutorial</option></a>
								<a class="dropdown-item" href="#"><option value="Lab">Lab</option></a>
								<a class="dropdown-item" href="#"><option value="Other">Other</option></a>




							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-batch-friday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="group">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Batch</option>
								<c:forEach items="${listBatch}" var="batch">

									<a class="dropdown-item" href="#"><option
											value="${batch.batchId}">${batch.batchId}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>





					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-hall-friday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="hall">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Location</option>
								<c:forEach items="${listHall}" var="hall">

									<a class="dropdown-item" href="#"><option
											value="${hall.hallId}">${hall.hallName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>

					<div class="col">

						<select class="form-control py-2" id="select-start-time-friday">
							<option selected="selected">Start Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>

					<div class="col">

						<select class="form-control  py-2" id="select-end-time-friday">
							<option selected="selected">End Time</option>


							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>


				</div>
				<br>
				<button type="submit" class="btn btn-success"
					onclick="saveTimeTable();">Save</button>


				<table class="table-m" id="table-friday">
					<tr class="table-head">
						<th>Module</th>
						<th>Group</th>
						<th>Tag</th>
						<th>Location</th>
						<th>Start Time</th>
						<th>End Time</th>
					</tr>
				</table>

			</div>

			<div id="Saturday" class="tabcontent">
				<h3>Saturday</h3>
				<div class="form-row">
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-module-saturday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="module">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Module</option>
								<c:forEach items="${listModule}" var="module">

									<a class="dropdown-item" href="#"><option
											value="${module.modulecode}">${module.moduleName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-tag-saturday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="tag">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Tag</option>


								<a class="dropdown-item" href="#"><option value="Lecture">Lecture</option></a>
								<a class="dropdown-item" href="#"><option value="Tutorial">Tutorial</option></a>
								<a class="dropdown-item" href="#"><option value="Lab">Lab</option></a>
								<a class="dropdown-item" href="#"><option value="Other">Other</option></a>




							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-batch-saturday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="group">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Batch</option>
								<c:forEach items="${listBatch}" var="batch">

									<a class="dropdown-item" href="#"><option
											value="${batch.batchId}">${batch.batchId}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>





					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-hall-saturday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="hall">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Location</option>
								<c:forEach items="${listHall}" var="hall">

									<a class="dropdown-item" href="#"><option
											value="${hall.hallId}">${hall.hallName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>

					<div class="col">

						<select class="form-control py-2" id="select-start-time-saturday">
							<option selected="selected">Start Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>

					<div class="col">

						<select class="form-control  py-2" id="select-end-time-saturday">
							<option selected="selected">End Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>


				</div>
				<br>
				<button type="submit" class="btn btn-success"
					onclick="saveTimeTable();">Save</button>



				<table class="table-m" id="table-saturday">
					<tr class="table-head">
						<th>Module</th>
						<th>Group</th>
						<th>Tag</th>
						<th>Location</th>
						<th>Start Time</th>
						<th>End Time</th>
					</tr>
				</table>

			</div>

			<div id="Sunday" class="tabcontent">
				<h3>Sunday</h3>
				<div class="form-row">
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-module-sunday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="module">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Module</option>
								<c:forEach items="${listModule}" var="module">

									<a class="dropdown-item" href="#"><option
											value="${module.modulecode}">${module.moduleName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-tag-sunday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="tag">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Tag</option>


								<a class="dropdown-item" href="#"><option value="Lecture">Lecture</option></a>
								<a class="dropdown-item" href="#"><option value="Tutorial">Tutorial</option></a>
								<a class="dropdown-item" href="#"><option value="Lab">Lab</option></a>
								<a class="dropdown-item" href="#"><option value="Other">Other</option></a>




							</div>

						</select>
					</div>
					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-batch-sunday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="group">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Batch</option>
								<c:forEach items="${listBatch}" var="batch">

									<a class="dropdown-item" href="#"><option
											value="${batch.batchId}">${batch.batchId}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>





					<div class="col dropdown">


						<select
							class="btn px-4 py-2 dropdown-timetable border dropdown-toggle"
							type="button" id="select-hall-sunday" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="hall">
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<option selected="selected">Location</option>
								<c:forEach items="${listHall}" var="hall">

									<a class="dropdown-item" href="#"><option
											value="${hall.hallId}">${hall.hallName}</option></a>
								</c:forEach>


							</div>

						</select>
					</div>

					<div class="col">

						<select class="form-control py-2" id="select-start-time-sunday">
							<option selected="selected">Start Time</option>

							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>

					<div class="col">

						<select class="form-control  py-2" id="select-end-time-sunday">
							<option selected="selected">End Time</option>
							<option>08.00</option>
							<option>08.30</option>
							<option>09.00</option>
							<option>09.30</option>
							<option>10.00</option>
							<option>10.30</option>
							<option>11.00</option>
							<option>11.30</option>
							<option>12.00</option>
							<option>12.30</option>
							<option>13.00</option>
							<option>13.30</option>
							<option>14.00</option>
							<option>14.30</option>
							<option>15.00</option>
							<option>15.30</option>
							<option>16.00</option>
							<option>16.30</option>
							<option>17.00</option>
							<option>17.30</option>
							<option>18.00</option>
							<option>18.30</option>
							<option>19.00</option>
							<option>19.30</option>
							<option>20.00</option>
							<option>20.30</option>
							<option>21.00</option>
						</select>


					</div>


				</div>
				<br>
				<button type="submit" class="btn btn-success"
					onclick="saveTimeTable();">Save</button>



				<table class="table-m" id="table-sunday">
					<tr class="table-head">
						<th>Module</th>
						<th>Group</th>
						<th>Tag</th>
						<th>Location</th>
						<th>Start Time</th>
						<th>End Time</th>
					</tr>
				</table>

			</div>

			<!--  </form> -->


			<!-- Form two end -->
			<!-- Form close -->



		</div>
	</div>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="../assetsdash/js/plugin/webfont/webfont.min.js"></script>
	<script>
		/* 
		 * request types for time table 
		 */
		const REQUEST_TYPE_VIEW_TIME_TABLE = "VIEW";
		const REQUEST_TYPE_SAVE_TIME_TABLE = "SAVE";

		/* 
		 * Working days 
		 */
		const MONDAY = "MONDAY";
		const TUESDAY = "TUESDAY";
		const WEDNESDAY = "WEDNESDAY";
		const THURSDAY = "THURSDAY";
		const FRIDAY = "FRIDAY";
		const SATURDAY = "SATURDAY";
		const SUNDAY = "SUNDAY";

		/* 
		 * Open time table after the relevent tab for a day clicks
		 */
		function openTimeTable(evt, dayName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(dayName).style.display = "block";
			evt.currentTarget.className += " active";
			fetchTimeTable(dayName.toUpperCase());
		}
		/* 
		 * Show Timetable by selected lecturer and day
		 */
		function showTimeTableByLecturerAndDay() {

			if (validateInputs(null, REQUEST_TYPE_VIEW_TIME_TABLE)) {
				var day = $('.tablinks.active').text();
				var obj = getIdSelectorsByDay(day.toUpperCase());
				fetchTimeTable(day.toUpperCase());
			}

		}
		/* 
		 * Input vaidation for all the request types
		 */
		function validateInputs(obj, type) {
			switch (type) {
			case REQUEST_TYPE_VIEW_TIME_TABLE:
				var day = $('.tablinks.active').text();
				var idSelectorInstructor = $("#select-instructor option:selected");
				if (day !== "" && idSelectorInstructor.text() !== "Lecturer") {
					return true;
				}
				swal(
						"Oops!",
						"Please select a lecturer and click on the relevant tab for the day!",
						"error");
				return false;
			case REQUEST_TYPE_SAVE_TIME_TABLE:
				if (obj.idSelectorInstructor.text() !== "Lecturer"
						&& obj.idSelectorModule.text() !== "Module"
						&& obj.idSelectorBatch.text() !== "Batch"
						&& obj.idSelectorHall.text() !== "Location"
						&& obj.idSelectorTag.text() !== "Tag"
						&& obj.idSelectorStartTime.text() !== "Start Time"
						&& obj.idSelectorEndTime.text() !== "End Time") {
					return true;
				}
				swal("Oops!", "All the fields are required!", "error");
				return false;
			}
		}/* 
		 * Save Timetable 
		 */
		function saveTimeTable() {

			var day = $('.tablinks.active').text();
			var obj = getIdSelectorsByDay(day.toUpperCase());

			if (validateInputs(obj, REQUEST_TYPE_SAVE_TIME_TABLE)) {

				var newObj = {
					day : day.toUpperCase(),
					instructor : obj.idSelectorInstructor.text(),

					module : obj.idSelectorModule.val(),
					batch : obj.idSelectorBatch.text(),
					hall : obj.idSelectorHall.text(),
					tag : obj.idSelectorTag.text(),
					startTime : obj.idSelectorStartTime.text(),
					endTime : obj.idSelectorEndTime.text()

				}

				$
						.ajax({
							type : "POST",
							url : "SaveTimeTableServelet",
							data : $.param(newObj),
							success : function(response) {

								if (response == "SUCCESS") {
									showTimeTableByLecturerAndDay();
									swal("SUCESS!",
											"Timetable updated successfully!",
											"success");

								} else if (response == "FAILED") {
									swal(
											"Oops!",
											"Selected timeslot has been already allocated!",
											"error");
								} else {
									swal(
											"Oops!",
											"Something went wrong,please try again later!",
											"error");
								}
							}

						});
			}
		}
		/* 
		 * Generic implementation to fetch the id selectors relevent for a specific day 
		 */

		function getIdSelectorsByDay(day) {

			var idSelectorInstructor;
			var idSelectorTable;
			var idSelectorModule;
			var idSelectorBatch;
			var idSelectorHall;
			var idSelectorTag;
			var idSelectorStartTime;
			var idSelectorEndTime;

			idSelectorInstructor = $("#select-instructor option:selected");
			switch (day) {
			case MONDAY:

				idSelectorTable = $("#table-monday");
				idSelectorModule = $("#select-module-monday option:selected");
				idSelectorBatch = $("#select-batch-monday option:selected");
				idSelectorHall = $("#select-hall-monday option:selected");
				idSelectorTag = $("#select-tag-monday option:selected");
				idSelectorStartTime = $("#select-start-time-monday option:selected");
				idSelectorEndTime = $("#select-end-time-monday option:selected");
				idSelectorTable = $("#table-monday");

				break;
			case TUESDAY:

				idSelectorTable = $("#table-tuesday");
				idSelectorModule = $("#select-module-tuesday option:selected");
				idSelectorBatch = $("#select-batch-tuesday option:selected");
				idSelectorHall = $("#select-hall-tuesday option:selected");
				idSelectorTag = $("#select-tag-tuesday option:selected");
				idSelectorStartTime = $("#select-start-time-tuesday option:selected");
				idSelectorEndTime = $("#select-end-time-tuesday option:selected");
				idSelectorTable = $("#table-tuesday");

				break;
			case WEDNESDAY:

				idSelectorTable = $("#table-wednesday");
				idSelectorModule = $("#select-module-wenesday option:selected");
				idSelectorBatch = $("#select-batch-wednesday option:selected");
				idSelectorHall = $("#select-hall-wednesday option:selected");
				idSelectorTag = $("#select-tag-wednesday option:selected");
				idSelectorStartTime = $("#select-start-time-wednesday option:selected");
				idSelectorEndTime = $("#select-end-time-wednesday option:selected");
				idSelectorTable = $("#table-wednesday");

				break;
			case THURSDAY:

				idSelectorTable = $("#table-thursday");
				idSelectorModule = $("#select-module-thursday option:selected");
				idSelectorBatch = $("#select-batch-thursday option:selected");
				idSelectorHall = $("#select-hall-thursday option:selected");
				idSelectorTag = $("#select-tag-thursday option:selected");
				idSelectorStartTime = $("#select-start-time-thursday option:selected");
				idSelectorEndTime = $("#select-end-time-thursday option:selected");
				idSelectorTable = $("#table-thursday");

				break;
			case FRIDAY:

				idSelectorTable = $("#table-friday");
				idSelectorModule = $("#select-module-friday option:selected");
				idSelectorBatch = $("#select-batch-friday option:selected");
				idSelectorHall = $("#select-hall-friday option:selected");
				idSelectorTag = $("#select-tag-friday option:selected");
				idSelectorStartTime = $("#select-start-time-friday option:selected");
				idSelectorEndTime = $("#select-end-time-friday option:selected");
				idSelectorTable = $("#table-friday");

				break;
			case SATURDAY:

				idSelectorTable = $("#table-saturday");
				idSelectorModule = $("#select-module-saturday option:selected");
				idSelectorBatch = $("#select-batch-saturday option:selected");
				idSelectorHall = $("#select-hall-saturday option:selected");
				idSelectorTag = $("#select-tag-saturday option:selected");
				idSelectorStartTime = $("#select-start-time-saturday option:selected");
				idSelectorEndTime = $("#select-end-time-saturday option:selected");
				idSelectorTable = $("#table-saturday");

				break;
			case SUNDAY:

				idSelectorTable = $("#table-sunday");
				idSelectorModule = $("#select-module-sunday option:selected");
				idSelectorBatch = $("#select-batch-sunday option:selected");
				idSelectorHall = $("#select-hall-sunday option:selected");
				idSelectorTag = $("#select-tag-sunday option:selected");
				idSelectorStartTime = $("#select-start-time-sunday option:selected");
				idSelectorEndTime = $("#select-end-time-sunday option:selected");
				idSelectorTable = $("#table-sunday");

				break;

			}
			return {
				idSelectorInstructor : idSelectorInstructor,
				idSelectorTable : idSelectorTable,
				idSelectorModule : idSelectorModule,
				idSelectorBatch : idSelectorBatch,
				idSelectorHall : idSelectorHall,
				idSelectorTag : idSelectorTag,
				idSelectorStartTime : idSelectorStartTime,
				idSelectorEndTime : idSelectorEndTime,
				idSelectorTable : idSelectorTable
			}
		}
		/* 
		 * Fethch Timetable by a database call and loads to the releveant table view 
		 */
		function fetchTimeTable(day) {

			var obj = getIdSelectorsByDay(day.toUpperCase());

			var newObj = {

				instructor : obj.idSelectorInstructor.text(),
				day : day,

			}

			$
					.ajax({
						type : "POST",
						url : "TimeSlotServelet",
						data : $.param(newObj

						),
						success : function(response) {
							if (response != null) {
								console.log(response);

								obj.idSelectorTable.find("tr:gt(0)").remove();
								// var timeTable = $("#table-monday");
								$
										.each(
												response,
												function(key, value) {

													var newRow = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");

													newRow
															.children()
															.eq(0)
															.text(
																	value['module'].moduleName);
													newRow
															.children()
															.eq(1)
															.text(
																	value['batch'].batchId);
													newRow.children().eq(2)
															.text(value['tag']);
													newRow
															.children()
															.eq(3)
															.text(
																	value['hall'].hallName);
													newRow
															.children()
															.eq(4)
															.text(
																	value['startTime']);
													newRow
															.children()
															.eq(5)
															.text(
																	value['endTime']);

													newRow
															.appendTo(obj.idSelectorTable);
												});

							}
						}
					});
		}
	</script>

</body>

</html>