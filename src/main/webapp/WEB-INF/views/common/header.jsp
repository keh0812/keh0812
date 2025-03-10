<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file = "../setting.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- Favicon -->
    <link rel="shortcut icon" href="${project}img/favicon.ico">

    <!-- Template -->
    <link rel="stylesheet" href="${project}css/graindashboard.css">
</head>
<body>
<!-- Header -->
<header class="header bg-body">
    <nav class="navbar flex-nowrap p-0">
        <div class="navbar-brand-wrapper d-flex align-items-center col-auto">
            <!-- Logo For Mobile View -->
            <a class="navbar-brand navbar-brand-mobile" href="${path}/main">
                <img class="img-fluid w-100" src="${project}img/erp.png" alt="Graindashboard" style="width: 200px; height: 60px;">
            </a>
            <!-- End Logo For Mobile View -->

            <!-- Logo For Desktop View -->
            <a class="navbar-brand navbar-brand-desktop" href="${path}/main">
                <img class="side-nav-hide-on-closed" src="${project}img/erp.png" alt="Graindashboard" style="width: 200px; height: 60px;">
            </a>
            
            <!-- End Logo For Desktop View -->
        </div>

        <div class="header-content col px-md-3">
            <div class="d-flex align-items-center">
                <!-- Side Nav Toggle -->
                <a  class="js-side-nav header-invoker d-flex mr-md-2" href="#"
                    data-close-invoker="#sidebarClose"
                    data-target="#sidebar"
                    data-target-wrapper="body">
                    <i class="gd-align-left"></i>
                </a>
                <!-- End Side Nav Toggle -->
                <!-- User Notifications -->
                <div class="dropdown ml-auto">
                  <c:if test="${sessionScope.mem_id != null}">
                    <a id="notificationsInvoker" class="header-invoker" href="#"
                    		aria-controls="notifications" 
                    		aria-haspopup="true" 
                    		aria-expanded="false" 
                    		data-unfold-event="click" 
                    		data-unfold-target="#notifications" 
                    		data-unfold-type="css-animation" 
                    		data-unfold-duration="300" 
                    		data-unfold-animation-in="fadeIn" 
                    		data-unfold-animation-out="fadeOut">
                        <span class="indicator indicator-bordered indicator-top-right indicator-primary rounded-circle"></span>
                        <i class="gd-bell"></i>
                    </a>
                    <div id="notifications" class="dropdown-menu dropdown-menu-center py-0 mt-4 w-18_75rem w-md-22_5rem unfold-css-animation unfold-hidden"
							aria-labelledby="notificationsInvoker" style="animation-duration: 300ms;">
                    </div>
                  </c:if>  
                  
                </div>
                <!-- End User Notifications -->
                <!-- User Avatar -->
                <div class="dropdown mx-3 dropdown ml-2">
                  <c:if test="${sessionScope.mem_id == null}">
                  
                    <a id="profileMenuInvoker" class="header-complex-invoker" href="main">
                        <!--img class="avatar rounded-circle mr-md-2" src="#" alt="John Doe"-->
                        <span class="d-none d-md-block center" style="width:100px">로그인</span>
                        
                    </a>
                  </c:if>
                  <c:if test="${sessionScope.mem_id != null}">
                    <a id="profileMenuInvoker" class="header-complex-invoker" href="#" aria-controls="profileMenu" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-target="#profileMenu" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-animation-in="fadeIn" data-unfold-animation-out="fadeOut">
                        <!-- <img class="avatar rounded-circle mr-md-2" src="#" alt="John Doe"> -->
                        <span class="d-none d-md-block center" style="width:100px">${sessionScope.mem_name}</span>
                        <i class="gd-angle-down d-none d-md-block ml-2"></i>
                        
                    </a>

                    <ul id="profileMenu" class="unfold unfold-user unfold-light unfold-top unfold-centered position-absolute pt-2 pb-1 mt-4 unfold-css-animation unfold-hidden fadeOut" aria-labelledby="profileMenuInvoker" style="animation-duration: 300ms;">
                        <li class="unfold-item">
                            <a class="unfold-link d-flex align-items-center text-nowrap" href="${path}/mypage">
                    <span class="unfold-item-icon mr-3">
                      <i class="gd-user"></i>
                    </span>
                                   내 정보
                            </a>
                        </li>
                        <li class="unfold-item unfold-item-has-divider">
                            <a class="unfold-link d-flex align-items-center text-nowrap" href="${path}/logout">
                    <span class="unfold-item-icon mr-3">
                      <i class="gd-power-off"></i>
                    </span>
                                로그아웃
                            </a>
                        </li>
                    </ul>
                  </c:if>
                </div>
                <!-- End User Avatar -->
            </div>
        </div>
    </nav>
</header>
<!-- End Header -->

</body>
</html>