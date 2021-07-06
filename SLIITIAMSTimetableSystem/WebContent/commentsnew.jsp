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
<link href="assets/comments.css" rel="stylesheet" />
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


<link href="assets/css/table.css" rel="stylesheet" />
	<style >
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
                    <h2><b> Comments </b><button type="button" class="btn btn-success add-new"><i class="fa fa-plus"></i> Add New</button></h2>
                        
                    </div>
            </div >   
 </div>
            
    <!-- Comments section -->
    <div class="container">
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1" id="logout">
        <div class="page-header">
            <h3 class="reviews">Leave your comment</h3>
            <div class="logout">
                <button class="btn btn-default btn-circle text-uppercase" type="button" onclick="$('#logout').hide(); $('#login').show()">
                    <span class="glyphicon glyphicon-off"></span> Logout                    
                </button>                
            </div>
        </div>
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
                <li><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Add comment</h4></a></li>
                <li><a href="#account-settings" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Account settings</h4></a></li>
            </ul>            
            <div class="tab-content">
                <div class="tab-pane active" id="comments-logout">                
                    <ul class="media-list">
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Marco </h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                Great snippet! Thanks for sharing.
                              </p>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                              <a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyOne"><span class="glyphicon glyphicon-comment"></span> 2 comments</a>
                          </div>              
                        </div>
                        <div class="collapse" id="replyOne">
                            <ul class="media-list">
                                <li class="media media-replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> The Hipster</h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Nice job Maria.
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                                      </div>              
                                    </div>
                                </li>
                                <li class="media media-replied" id="replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://pbs.twimg.com/profile_images/442656111636668417/Q_9oP8iZ.jpeg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Mary</h4></h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Thank you Guys!
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                                      </div>              
                                    </div>
                                </li>
                            </ul>  
                        </div>
                      </li>          
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kurafire/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Nico</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                I'm looking for that. Thanks!
                              </p>
                              <div class="embed-responsive embed-responsive-16by9">
                                  <iframe class="embed-responsive-item" src="//www.youtube.com/embed/80lNjkcp6gI" allowfullscreen></iframe>
                              </div>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                          </div>              
                        </div>
                      </li>
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/lady_katherine/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Kriztine</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                Yehhhh... Thanks for sharing.
                              </p>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                              <a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyTwo"><span class="glyphicon glyphicon-comment"></span> 1 comment</a>
                          </div>              
                        </div>
                        <div class="collapse" id="replyTwo">
                            <ul class="media-list">
                                <li class="media media-replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/jackiesaik/128.jpg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Lizz</h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Classy!
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                                      </div>              
                                    </div>
                                </li>
                            </ul>  
                        </div>
                      </li>
                    </ul> 
                </div>
                <div class="tab-pane" id="add-comment">
                    <form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Comment</label>
                            <div class="col-sm-10">
                              <textarea class="form-control" name="addComment" id="addComment" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="uploadMedia" class="col-sm-2 control-label">Upload media</label>
                            <div class="col-sm-10">                    
                                <div class="input-group">
                                  <div class="input-group-addon">http://</div>
                                  <input type="text" class="form-control" name="uploadMedia" id="uploadMedia">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                            </div>
                        </div>            
                    </form>
                </div>
                <div class="tab-pane" id="account-settings">
                    <form action="#" method="post" class="form-horizontal" id="accountSetForm" role="form">
                        <div class="form-group">
                            <label for="avatar" class="col-sm-2 control-label">Avatar</label>
                            <div class="col-sm-10">                                
                                <div class="custom-input-file">
                                    <label class="uploadPhoto">
                                        Edit
                                        <input type="file" class="change-avatar" name="avatar" id="avatar">
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="name" id="name" placeholder="Vilma palma">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickName" class="col-sm-2 control-label">Nick name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="nickName" id="nickName" placeholder="Vilma">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" name="email" id="email" placeholder="vilma@mail.com">
                            </div>
                        </div>  
                        <div class="form-group">
                            <label for="newPassword" class="col-sm-2 control-label">New password</label>
                            <div class="col-sm-10">
                              <input type="password" class="form-control" name="newPassword" id="newPassword">
                            </div>
                        </div> 
                        <div class="form-group">
                            <label for="confirmPassword" class="col-sm-2 control-label">Confirm password</label>
                            <div class="col-sm-10">
                              <input type="password" class="form-control" name="confirmPassword" id="confirmPassword">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Save changes</button>
                            </div>
                        </div>            
                    </form>
                </div>
            </div>
        </div>
	</div>
  </div>
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1" id="login">
        <div class="page-header">
            <h3 class="reviews">Leave your comment</h3>
            <div class="logout">
                <button class="btn btn-default btn-circle text-uppercase" type="button" onclick="$('#login').hide(); $('#logout').show()">
                    <span class="glyphicon glyphicon-off"></span> Login                    
                </button>                
            </div>
        </div>
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-login" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
                <li><a href="#add-comment-disabled" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Add comment</h4></a></li>
                <li><a href="#new-account" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Create an account</h4></a></li>
            </ul>            
            <div class="tab-content">
                <div class="tab-pane active" id="comments-login">                
                    <ul class="media-list">
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Marco</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                Great snippet! Thanks for sharing.
                              </p>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                              <a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyThree"><span class="glyphicon glyphicon-comment"></span> 2 comments</a>
                          </div>              
                        </div>
                        <div class="collapse" id="replyThree">
                            <ul class="media-list">
                                <li class="media media-replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> The Hipster</h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Nice job Maria.
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                                      </div>              
                                    </div>
                                </li>
                                <li class="media media-replied" id="replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://pbs.twimg.com/profile_images/442656111636668417/Q_9oP8iZ.jpeg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Mary</h4></h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Thank you Guys!
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                                      </div>              
                                    </div>
                                </li>
                            </ul>  
                        </div>
                      </li>          
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kurafire/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Nico</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                I'm looking for that. Thanks!
                              </p>
                              <div class="embed-responsive embed-responsive-16by9">
                                  <iframe class="embed-responsive-item" src="//www.youtube.com/embed/80lNjkcp6gI" allowfullscreen></iframe>
                              </div>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                          </div>              
                        </div>
                      </li>
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/lady_katherine/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Kriztine</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                Yehhhh... Thanks for sharing.
                              </p>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                              <a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyFour"><span class="glyphicon glyphicon-comment"></span> 1 comment</a>
                          </div>              
                        </div>
                        <div class="collapse" id="replyFour">
                            <ul class="media-list">
                                <li class="media media-replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/jackiesaik/128.jpg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Lizz</h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Classy!
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> Reply</a>
                                      </div>              
                                    </div>
                                </li>
                            </ul>  
                        </div>
                      </li>
                    </ul> 
                </div>
                <div class="tab-pane" id="add-comment-disabled">
                    <div class="alert alert-info alert-dismissible" role="alert">
                      <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>                        
                      </button>
                      <strong>Hey!</strong> If you already have an account <a href="#" class="alert-link">Login</a> now to make the comments you want. If you do not have an account yet you're welcome to <a href="#" class="alert-link"> create an account.</a>
                    </div>
                    <form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Comment</label>
                            <div class="col-sm-10">
                              <textarea class="form-control" name="addComment" id="addComment" rows="5" disabled></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="uploadMedia" class="col-sm-2 control-label">Upload media</label>
                            <div class="col-sm-10">                    
                                <div class="input-group">
                                  <div class="input-group-addon">http://</div>
                                  <input type="text" class="form-control" name="uploadMedia" id="uploadMedia" disabled>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-success btn-circle text-uppercase disabled" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                            </div>
                        </div>            
                    </form>
                </div>
                <div class="tab-pane" id="new-account">
                    <form action="#" method="post" class="form-horizontal" id="commentForm" role="form">
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="name" id="name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" name="email" id="email" required>
                            </div>
                        </div>  
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-10">
                              <input type="password" class="form-control" name="password" id="password">
                            </div>
                        </div>                         
                        <div class="form-group">
                            <div class="checkbox">                
                                <label for="agreeTerms" class="col-sm-offset-2 col-sm-10">
                                    <input type="checkbox" name="agreeTerms" id="agreeTerms"> I agree all <a href="#">Terms & Conditions</a>
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Create an account</button>
                            </div>
                        </div>            
                    </form>
                </div>
            </div>
        </div>
    </div>
  </div>
  <div class="page-header text-center">
    <h3 class="reviews"><span class="glyphicon glyphicon-magnet"></span> Uicomments by <a href="https://twitter.com/maridlcrmn">maridlcrmn</a></h3>
  </div>
  <div class="notes text-center"><small>Image credits: uifaces.com</small></div>
</div>

<!-- Table close -->
</div>

</body>

<script src="./assets/js/halls_table.js"></script>

</html>