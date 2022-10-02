<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>send msg</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/holder/2.4.1/holder.js"></script>
</head>
<body>
<div style="padding: 20px 20% 20px 20%; background-color: mediumorchid;">
<div class="list-group chat-user-list">
    <a href="javascript:" style="padding: 2px;" class="list-group-item">
        <div class="media-left" style="width: 50px;text-align: center;">
            <div>
                <img class="img-circle" title="User1" alt="User1" data-src="holder.js/40x40/lava" />
            </div>
        </div>
        <div class="media-body">
            <div class="media-heading">
                User 1
            </div>
        </div>
    </a>


    <a href="javascript:" style="padding: 2px;" class="list-group-item">
        <div class="media-left" style="width: 50px;text-align: center;">
            <div height="40px">
                <img class="img-circle" title="User1" alt="User1" data-src="holder.js/40x40/vine">
            </div>
        </div>
        <div class="media-body">
            <div class="media-heading">
                User 2
            </div>
        </div>
    </a>


    <a href="javascript:" class="list-group-item " style="padding: 2px;">
        <div style="float: right;">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Delete</span></button>
        </div>
        <div class="media-left">
            <img class="img-circle" title="User1" alt="User1" data-src="holder.js/40x40/lava" />
        </div>
        <div class="media-body">
            <div class="media-left">
                <ul class="list-inline">
                    <li style="padding: 0;">
                        User 1, 
                    </li>
                    <li style="padding: 0;">
                        User 2
                    </li>
                </ul>
            </div>
        </div>
    </a>


    <a href="javascript:" class="list-group-item active" style="padding: 2px;">
        <div style="float: right;">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Delete</span></button>
        </div>
        <div class="media-left">
            <img class="img-circle" title="User1" alt="User1" data-src="holder.js/40x40/vine" />
        </div>
        <div class="media-body">
            <div class="media-left">
                <ul class="list-inline">
                    <li style="padding: 0;">
                        User 1,
                    </li>
                    <li style="padding: 0;">
                        User 2
                    </li>
                </ul>
            </div>
        </div>
    </a>
</div>
</div>
</body>
</html>