<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<body>
<div class="main-wrapper">
    <jsp:include page="header.jsp"/>
    <jsp:include page="sideMenu.jsp"/>
    <div class="page-wrapper"> <!-- content -->
        <div class="content container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col-lg-7 col-md-12 col-sm-12 col-12">
                        <h5 class="text-uppercase">Add Student</h5>
                    </div>
                    <div class="col-lg-5 col-md-12 col-sm-12 col-12">
                        <ul class="list-inline breadcrumb float-right">
                            <li class="list-inline-item"><a href="index.html">Home</a></li>
                            <li class="list-inline-item"><a href="index.html">Student</a></li>
                            <li class="list-inline-item"> Add Student</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-content">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="page-title">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="Page-title">Student information</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <form:form class="custom-mt-form" method="post" modelAttribute="student" enctype="multipart/form-data">
                                <form:hidden path="id"/>
                                    <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group custom-mt-form-group">
                                                <form:input path="name"/>
                                                <label class="control-label">Firstname</label><i class="bar"></i>
                                            </div>
                                            <div class="form-group custom-mt-form-group">
                                                <form:input path="email"/>
                                                <label class="control-label">Email</label><i class="bar"></i>
                                            </div>
                                            <div class="form-group custom-mt-form-group">
                                                <form:select path="gender">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                </form:select>
                                                <label class="control-label">Gender</label><i class="bar"></i>
                                            </div>
                                        <div class="form-group custom-mt-form-group">
                                            <form:input path="mobileNo" />
                                            <label class="control-label">Mobile number</label><i class="bar"></i>
                                        </div>
                                        <div class="form-group custom-mt-form-group">
                                            <form:select path="district" cssClass="form-control">
                                                <option value="0">--- Select Any ---</option>
                                                <%--<c:forEach items="${districtList}" var="dis">--%>
                                                    <%--<option value="${name}">${name}</option>--%>
                                                <%--</c:forEach>--%>
                                                <form:options items="${districtList}" itemValue="name" itemLabel="name"/>

                                            </form:select>
                                            <label class="control-label">District</label><i class="bar"></i>
                                        </div>
                                        <div class="form-group custom-mt-form-group">
                                            <input type="file" name="multipartFile" id="multipartFile"/>
                                            <label class="control-label">Student Image</label><i class="bar"></i>
                                            <img id="preview" src="#" style="height: 200px; width: 200px; display: none;"/>
                                        </div>
                                        <div class="form-group custom-mt-form-group">
                                            <table class="table table-bordered" id="courseListItemTable">
                                                <thead>
                                                <tr>
                                                    <th>Course</th>
                                                    <th><button type="button" class="btn btn-success addLine">Add</button></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                        <form class="custom-mt-form">
                                            <div class="form-group text-center custom-mt-form-group">
                                                <button class="btn btn-primary mr-2" type="submit">Submit</button>
                                                <button class="btn btn-secondary" type="reset">Cancel</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="notification-box">
            <div class="msg-sidebar notifications msg-noti">
                <div class="topnav-dropdown-header">
                    <span>Messages</span>
                </div>
                <div class="drop-scroll msg-list-scroll">
                    <ul class="list-box">
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">R</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Richard Miles </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item new-message">
                                    <div class="list-left">
                                        <span class="avatar">J</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Ruth C. Gault</span>
                                        <span class="message-time">1 Aug</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">T</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Tarah Shropshire </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">M</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Mike Litorus</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">C</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Catherine Manseau </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">D</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Domenic Houston </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">B</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Buster Wigton </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">R</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Rolland Webber </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">C</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author"> Claire Mapes </span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">M</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Melita Faucher</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">J</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Jeffery Lalor</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">L</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Loren Gatlin</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="chat.html">
                                <div class="list-item">
                                    <div class="list-left">
                                        <span class="avatar">T</span>
                                    </div>
                                    <div class="list-body">
                                        <span class="message-author">Tarah Shropshire</span>
                                        <span class="message-time">12:28 AM</span>
                                        <div class="clearfix"></div>
                                        <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="topnav-dropdown-footer">
                    <a href="chat.html">See all messages</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sidebar-overlay" data-reff=""></div>
<script>
    $(document).ready(function(){
        console.log("SMNLOG Document is ready.....::");

        var courseList = [];

        <c:forEach items="${courseList}" var="course">
        courseList.push({
            'name':'${course.name}'
        });
        </c:forEach>

        console.log("SMNLOG courseList::"+JSON.stringify(courseList));

        var $courseListItemTable = $("#courseListItemTable tbody");

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('#preview').attr('src', e.target.result);
                    $('#preview').show();
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#multipartFile").change(function() {
            readURL(this);
        });

        $(".addLine").click(function() {
            console.log("SMNLOG addLine clicked::");
            var rowCount = $courseListItemTable.find('tr').length;
            var lineHtml = '<tr>'
                            + '<td>'+getCourseSelectBox(courseList, 'courseList['+rowCount+'].name')+'</td>'
                            + '<td><a href="#" class="removeLine">Remove</a></td>'
                            + '</tr>';

            $courseListItemTable.append(lineHtml);
        });

        $(document).on('click',".removeLine", function() {
            console.log("SMNLOG removeLine clicked::");
           $(this).closest('tr').remove();
        });

        function getCourseSelectBox(list, name){

            console.log("SMNLOG ::"+JSON.stringify(list));

            var selectBoxHtml = '<select name="'+name+'" class="form-control">';

            $.each(list, function(index, item){
                selectBoxHtml += '<option value="'+item.name+'">'+item.name+'</option>';
            });
            selectBoxHtml += '</select>';
            return selectBoxHtml;
        }
    })
</script>
</body>
</html>