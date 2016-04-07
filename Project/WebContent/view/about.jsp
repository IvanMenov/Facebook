<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
  
  </head>
  <body class="animated fadeIn">

    <!-- Fixed navbar -->
   	<c:import url="./nav_bar.jsp"></c:import>
    
    <div class="row text-center color-container">
      	<h1 class="profile-name">
      
    	  <c:out value="${sessionScope.first_name}${' '}${sessionScope.last_name}" />
		</h1>
   	
    </div>
      <c:import url="./left_profile_bar.jsp"></c:import>
              <div class="profile-info col-md-8">
             
              
                <div class="panel">
                    <div class="panel-body bio-graph-info">
                        <h1>Personal Information</h1>
                        <div class="row">
                            <div class="bio-row">
                                <p><span><strong>First Name</strong> </span> 
                                <c:out value="${sessionScope.first_name}" /> 
                                </p>
                            </div>
                            <div class="bio-row">
                                <p><span><strong>Last Name</strong> </span> <c:out value="${sessionScope.last_name}" /> </p>
                            </div>
                            <div class="bio-row">
                                <p><strong><span>Location </span></strong> 
                                
								<c:if test="${not empty sessionScope.location}">
    								<c:out value="${sessionScope.location}" />
    							</c:if></p>
                            </div>
                            <div class="bio-row">
                                <p><span><strong>Gender</strong></span>
                                
                                <c:if test="${not empty sessionScope.isMale}">
    								<c:out value="${sessionScope.isMale}" />
    							</c:if></p>
                            </div>
                            <div class="bio-row">
                                <p><span><strong>Email</strong> </span> 
                                <c:if test="${not empty sessionScope.email}">
    								<c:out value="${sessionScope.email}" />
    							</c:if></p>
                            </div>
                            
                            <div class="bio-row">
                                <p><span><strong>Phone</strong></span> 
                                <c:if test="${not empty sessionScope.phone}">
    								<c:out value="${sessionScope.phone}" />
    							</c:if></p>
                            </div>
                            <div class="bio-row">
                                <p><span><strong>About</strong> </span><br /> 
                                <c:if test="${not empty sessionScope.about}">
    								<c:out value="${sessionScope.about}" />
    							</c:if></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div><!--End Timeline content -->

    <!-- Online users sidebar content
    <div class="chat-sidebar focus">
      <div class="list-group text-left">
        <p class="text-center visible-xs"><a href="#" class="hide-chat btn btn-success">Hide</a></p> 
        <p class="text-center chat-title">Online users</p>  
        <a href="./view/messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="./view/img/Friends/guy-2.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Jeferh Smith</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-times-circle absent-status"></i>
          <img src="img/Friends/woman-1.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Dapibus acatar</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/guy-3.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Antony andrew lobghi</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/woman-2.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Maria fernanda coronel</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/guy-4.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Markton contz</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-times-circle absent-status"></i>
          <img src="img/Friends/woman-3.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Martha creaw</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-times-circle absent-status"></i>
          <img src="img/Friends/woman-8.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Yira Cartmen</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/woman-4.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Jhoanath matew</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/woman-5.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Ryanah Haywofd</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/woman-9.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Linda palma</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/woman-10.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Andrea ramos</span>
        </a>
        <a href="messages.html" class="list-group-item">
          <i class="fa fa-check-circle connected-status"></i>
          <img src="img/Friends/child-1.jpg" class="img-chat img-thumbnail">
          <span class="chat-user-name">Dora ty bluekl</span>
        </a>        
      </div>
    </div><!-- Online users sidebar content-->

  </body>
</html>
