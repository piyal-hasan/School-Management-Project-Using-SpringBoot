<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<style>
    #container {
        height: 400px;
    }

    .highcharts-figure, .highcharts-data-table table {
        min-width: 300px;
        max-width: 500px;
        margin: 1em auto;
    }

    .highcharts-data-table table {
        font-family: Verdana, sans-serif;
        border-collapse: collapse;
        border: 1px solid #EBEBEB;
        margin: 10px auto;
        text-align: center;
        width: 100%;
        max-width: 500px;
    }
    .highcharts-data-table caption {
        padding: 1em 0;
        font-size: 1.2em;
        color: #555;
    }
    .highcharts-data-table th {
        font-weight: 600;
        padding: 0.5em;
    }
    .highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
        padding: 0.5em;
    }
    .highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
        background: #f8f8f8;
    }
    .highcharts-data-table tr:hover {
        background: #f1f7ff;
    }


    .highcharts-figure, .highcharts-data-table table {
        min-width: 310px;
        max-width: 800px;
        margin: 1em auto;
    }

    #container {
        height: 400px;
    }

    .highcharts-data-table table {
        font-family: Verdana, sans-serif;
        border-collapse: collapse;
        border: 1px solid #EBEBEB;
        margin: 10px auto;
        text-align: center;
        width: 100%;
        max-width: 500px;
    }
    .highcharts-data-table caption {
        padding: 1em 0;
        font-size: 1.2em;
        color: #555;
    }
    .highcharts-data-table th {
        font-weight: 600;
        padding: 0.5em;
    }
    .highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
        padding: 0.5em;
    }
    .highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
        background: #f8f8f8;
    }
    .highcharts-data-table tr:hover {
        background: #f1f7ff;
    }
</style>
<body>
<div class="main-wrapper">

    <jsp:include page="header.jsp"/>
    <jsp:include page="sideMenu.jsp"/>
    <div class="page-wrapper"> <!-- content -->
        <div class="content container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="dash-widget dash-widget5">
                        <span class="dash-widget-icon bg-primary"><i class="fa fa-users" aria-hidden="true"></i></span>
                        <div class="dash-widget-info">
                            <h3>60,000</h3>
                            <span>Students</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="dash-widget dash-widget5">
                        <span class="dash-widget-icon bg-info"><i class="fa fa-user" aria-hidden="true"></i></span>
                        <div class="dash-widget-info">
                            <h3>12,000</h3>
                            <span>Teachers</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="dash-widget dash-widget5">
                        <span class="dash-widget-icon bg-warning"><i class="fa fa-user-plus" aria-hidden="true"></i></span>
                        <div class="dash-widget-info">
                            <h3>20,000</h3>
                            <span>Parents</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                    <div class="dash-widget dash-widget5">
                        <span class="dash-widget-icon bg-success"><i class="fa fa-money" aria-hidden="true"></i></span>
                        <div class="dash-widget-info">
                            <h3>$20,000</h3>
                            <span>Total Earnings</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="content-page">
                        <div class="page-title">Total Members</div>
                        <figure class="highcharts-figure">
                            <div id="container"></div>
                        </figure>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="content-page">
                        <div class="page-title">Income Monthwise</div>
                        <figure class="highcharts-figure">
                            <div id="container2"></div>
                        </figure>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="content-page">
                        <div class="page-title">Income Monthwise</div>
                        <figure class="highcharts-figure">
                            <div id="container3" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                        </figure>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="content-page">
                        <div class="page-title">Income Monthwise</div>
                        <figure class="highcharts-figure">
                            <div id="container4" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                        </figure>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="card-box m-b-2">
                        <div class="page-title mb-2">
                            Events
                        </div>
                        <div class="card-body p-0">
                            <div id="calendar"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="content-page">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="page-title mb-2">
                                    Exam-list
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-striped custom-table">
                                        <thead>
                                        <tr>
                                            <th style="min-width:91px;">Exam Name </th>
                                            <th style="min-width:50px;">Subject</th>
                                            <th style="min-width:50px;">Class</th>
                                            <th style="min-width:50px;">Section</th>
                                            <th style="min-width:50px;">Time</th>
                                            <th style="min-width:50px;">Date</th>
                                            <th class="text-right" style="width:30%;">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                <a href="exam-detail.html" class="avatar">C</a>
                                            </td>
                                            <td>English</td>
                                            <td>5</td>
                                            <td>B</td>
                                            <td>10.00am</td>
                                            <td>20/1/2019</td>
                                            <td class="text-right" >
                                                <a href="edit-exam.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="exam-detail.html" class="avatar">C</a>
                                            </td>
                                            <td>English</td>
                                            <td>4</td>
                                            <td>A</td>
                                            <td>10.00am</td>
                                            <td>2/1/2019</td>
                                            <td class="text-right">
                                                <a href="edit-exam.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <a href="exam-detail.html" class="avatar">C</a>
                                            </td>
                                            <td>Maths</td>
                                            <td>6</td>
                                            <td>B</td>
                                            <td>10.00am</td>
                                            <td>2/1/2019</td>
                                            <td class="text-right">
                                                <a href="edit-exam.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="exam-detail.html" class="avatar">C</a>
                                            </td>
                                            <td>Science</td>
                                            <td>3</td>
                                            <td>B</td>
                                            <td>10.00am</td>
                                            <td>20/1/2019</td>
                                            <td class="text-right">
                                                <a href="edit-exam.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="exam-detail.html" class="avatar">C</a>
                                            </td>
                                            <td>Maths</td>
                                            <td>6</td>
                                            <td>B</td>
                                            <td>10.00am</td>
                                            <td>20/1/2019</td>
                                            <td class="text-right">
                                                <a href="edit-exam.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="exam-detail.html" class="avatar">C</a>
                                            </td>
                                            <td>English</td>
                                            <td>7</td>
                                            <td>B</td>
                                            <td>10.00am</td>
                                            <td>20/1/2019</td>
                                            <td class="text-right">
                                                <a href="edit-exam.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="exam-detail.html" class="avatar">C</a>
                                            </td>
                                            <td>Science</td>
                                            <td>5</td>
                                            <td>B</td>
                                            <td>10.00am</td>
                                            <td>20/1/2019</td>
                                            <td class="text-right">
                                                <a href="edit-exam.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-lg-12">
                    <div class="content-page">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="page-title mb-2">
                                    All Students
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-striped custom-table">
                                        <thead>
                                        <tr>
                                            <th style="min-width:50px;">Name </th>
                                            <th style="min-width:74px;">Student ID</th>
                                            <th style="min-width:50px;">Class</th>
                                            <th style="min-width:50px;">Section</th>
                                            <th style="min-width:98px;">Mobile</th>
                                            <th style="min-width:90px;">Date of Birth</th>
                                            <th class="text-right">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                <h2><a href="profile.html" class="avatar text-white">P</a></h2>
                                                <h2><a href="profile.html">Parker <span></span></a></h2>
                                            </td>
                                            <td>ST-0d001</td>
                                            <td>1</td>
                                            <td>A</td>
                                            <td>973-584-58700</td>
                                            <td>5th June</td>
                                            <td class="text-right">
                                                <a href="edit-student.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2><a href="profile.html" class="avatar text-white">S</a></h2>
                                                <h2><a href="profile.html">Smith <span></span></a></h2>
                                            </td>
                                            <td>ST-0d002</td>
                                            <td>2</td>
                                            <td>B</td>
                                            <td>973-584-58700</td>
                                            <td>6th April</td>
                                            <td class="text-right">
                                                <a href="edit-student.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2><a href="profile.html" class="avatar text-white">H</a></h2>
                                                <h2><a href="profile.html">Hensley<span></span></a></h2>
                                            </td>
                                            <td>ST-0d003</td>
                                            <td>1</td>
                                            <td>A</td>
                                            <td>973-584-58700</td>
                                            <td>5th Jan</td>
                                            <td class="text-right">
                                                <a href="edit-student.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2><a href="profile.html" class="avatar text-white">F</a></h2>
                                                <h2><a href="profile.html">Friesen<span></span></a></h2>
                                            </td>
                                            <td>ST-0d004</td>
                                            <td>1</td>
                                            <td>A</td>
                                            <td>973-584-58700</td>
                                            <td>2nd June</td>
                                            <td class="text-right">
                                                <a href="edit-student.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2><a href="profile.html" class="avatar text-white">J</a></h2>
                                                <h2><a href="profile.html">Jackson<span></span></a></h2>
                                            </td>
                                            <td>ST-0d005</td>
                                            <td>1</td>
                                            <td>A</td>
                                            <td>973-584-58700</td>
                                            <td>7th July</td>
                                            <td class="text-right">
                                                <a href="edit-student.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2><a href="profile.html" class="avatar text-white">M</a></h2>
                                                <h2><a href="profile.html">Mason<span></span></a></h2>
                                            </td>
                                            <td>ST-0d006</td>
                                            <td>1</td>
                                            <td>A</td>
                                            <td>973-584-58700</td>
                                            <td>5th June</td>
                                            <td class="text-right">
                                                <a href="edit-student.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h2><a href="profile.html" class="avatar text-white">G</a></h2>
                                                <h2><a href="profile.html">Garrett <span></span></a></h2>
                                            </td>
                                            <td>ST-0d007</td>
                                            <td>1</td>
                                            <td>A</td>
                                            <td>973-584-58700</td>
                                            <td>5th April</td>
                                            <td class="text-right">
                                                <a href="edit-student.html" class="btn btn-primary btn-sm mb-1">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                </a>
                                                <button type="submit" data-toggle="modal" data-target="#delete_employee" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
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
</div>
<div class="sidebar-overlay" data-reff=""></div>
</body>
<script>
    $(document).ready(function(){

// user + sign before to cast it integer from js
        var data = [{
            name: 'Male',
            y: +'${male}',
            sliced: true,
            selected: true
        }, {
            name: 'Female',
            y: +'${female}'
        }, {
            name: 'Others',
            y: +'${others}'
        }];
        //initial report
        populatePieChart(data);

        setInterval(function(){
            $.get('/fetchStudentReportData', function(result){

                var updatedDataFromAjax = [{
                    name: 'Male',
                    y: result.male,
                    sliced: true,
                    selected: true
                }, {
                    name: 'Female',
                    y: result.female
                }, {
                    name: 'Others',
                    y: result.others
                }];
                console.log("SMNLOG updatedDataFromAjax::"+JSON.stringify(updatedDataFromAjax));
                populatePieChart(updatedDataFromAjax);

            })

        }, 5000);





        /**
         * Get the current time
         */
        function getNow() {
            var now = new Date();

            return {
                hours: now.getHours() + now.getMinutes() / 60,
                minutes: now.getMinutes() * 12 / 60 + now.getSeconds() * 12 / 3600,
                seconds: now.getSeconds() * 12 / 60
            };
        }

        /**
         * Pad numbers
         */
        function pad(number, length) {
            // Create an array of the remaining length + 1 and join it with 0's
            return new Array((length || 2) + 1 - String(number).length).join(0) + number;
        }

        var now = getNow();

// Create the chart
        Highcharts.chart('container', {

                chart: {
                    type: 'gauge',
                    plotBackgroundColor: null,
                    plotBackgroundImage: null,
                    plotBorderWidth: 0,
                    plotShadow: false,
                    height: '80%'
                },

                credits: {
                    enabled: false
                },

                title: {
                    text: 'The Highcharts clock'
                },

                pane: {
                    background: [{
                        // default background
                    }, {
                        // reflex for supported browsers
                        backgroundColor: Highcharts.svg ? {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: -0.4,
                                    r: 1.9
                                },
                                stops: [
                                    [0.5, 'rgba(255, 255, 255, 0.2)'],
                                    [0.5, 'rgba(200, 200, 200, 0.2)']
                                ]
                            } : null
                    }]
                },

                yAxis: {
                    labels: {
                        distance: -20
                    },
                    min: 0,
                    max: 12,
                    lineWidth: 0,
                    showFirstLabel: false,

                    minorTickInterval: 'auto',
                    minorTickWidth: 1,
                    minorTickLength: 5,
                    minorTickPosition: 'inside',
                    minorGridLineWidth: 0,
                    minorTickColor: '#666',

                    tickInterval: 1,
                    tickWidth: 2,
                    tickPosition: 'inside',
                    tickLength: 10,
                    tickColor: '#666',
                    title: {
                        text: 'Powered by<br/>Highcharts',
                        style: {
                            color: '#BBB',
                            fontWeight: 'normal',
                            fontSize: '8px',
                            lineHeight: '10px'
                        },
                        y: 10
                    }
                },

                tooltip: {
                    formatter: function () {
                        return this.series.chart.tooltipText;
                    }
                },

                series: [{
                    data: [{
                        id: 'hour',
                        y: now.hours,
                        dial: {
                            radius: '60%',
                            baseWidth: 4,
                            baseLength: '95%',
                            rearLength: 0
                        }
                    }, {
                        id: 'minute',
                        y: now.minutes,
                        dial: {
                            baseLength: '95%',
                            rearLength: 0
                        }
                    }, {
                        id: 'second',
                        y: now.seconds,
                        dial: {
                            radius: '100%',
                            baseWidth: 1,
                            rearLength: '20%'
                        }
                    }],
                    animation: false,
                    dataLabels: {
                        enabled: false
                    }
                }]
            },

// Move
            function (chart) {
                setInterval(function () {

                    now = getNow();

                    if (chart.axes) { // not destroyed
                        var hour = chart.get('hour'),
                            minute = chart.get('minute'),
                            second = chart.get('second'),
                            // run animation unless we're wrapping around from 59 to 0
                            animation = now.seconds === 0 ?
                                false : {
                                    easing: 'easeOutBounce'
                                };

                        // Cache the tooltip text
                        chart.tooltipText =
                            pad(Math.floor(now.hours), 2) + ':' +
                            pad(Math.floor(now.minutes * 5), 2) + ':' +
                            pad(now.seconds * 5, 2);


                        hour.update(now.hours, true, animation);
                        minute.update(now.minutes, true, animation);
                        second.update(now.seconds, true, animation);
                    }

                }, 1000);

            });

        /**
         * Easing function from https://github.com/danro/easing-js/blob/master/easing.js
         */
        Math.easeOutBounce = function (pos) {
            if ((pos) < (1 / 2.75)) {
                return (7.5625 * pos * pos);
            }
            if (pos < (2 / 2.75)) {
                return (7.5625 * (pos -= (1.5 / 2.75)) * pos + 0.75);
            }
            if (pos < (2.5 / 2.75)) {
                return (7.5625 * (pos -= (2.25 / 2.75)) * pos + 0.9375);
            }
            return (7.5625 * (pos -= (2.625 / 2.75)) * pos + 0.984375);
        };


        Highcharts.chart('container2', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Monthly Average SHAMIM FALL'
            },
            subtitle: {
                text: 'Source: WorldClimate.com'
            },
            xAxis: {
                categories: [
                    'Jan',
                    'Feb',
                    'Mar',
                    'Apr',
                    'May',
                    'Jun',
                    'Jul',
                    'Aug',
                    'Sep',
                    'Oct',
                    'Nov',
                    'Dec'
                ],
                crosshair: true
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'SHAMIM FALL'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: 'Tokyo',
                data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

            }, {
                name: 'New York',
                data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

            }, {
                name: 'London',
                data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

            }, {
                name: 'Berlin',
                data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

            }]
        });



        //Pie chart
        Highcharts.chart('container3', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: 0,
                plotShadow: false
            },
            title: {
                text: 'Browser<br>shares<br>2017',
                align: 'center',
                verticalAlign: 'middle',
                y: 60
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    dataLabels: {
                        enabled: true,
                        distance: -50,
                        style: {
                            fontWeight: 'bold',
                            color: 'white'
                        }
                    },
                    startAngle: -90,
                    endAngle: 90,
                    center: ['50%', '75%'],
                    size: '110%'
                }
            },
            series: [{
                type: 'pie',
                name: 'Browser share',
                innerSize: '50%',
                data: [
                    ['Chrome', 58.9],
                    ['Firefox', 13.29],
                    ['Internet Explorer', 13],
                    ['Edge', 3.78],
                    ['Safari', 3.42],
                    {
                        name: 'Other',
                        y: 7.61,
                        dataLabels: {
                            enabled: false
                        }
                    }
                ]
            }]
        });

        function populatePieChart(list){
            // Pie chart from database
            Highcharts.chart('container4', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: 'Gender wise Percentage Report'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                    name: 'Percentage',
                    colorByPoint: true,
                    data: list
                }]
            });
        }

    });
</script>
</html>