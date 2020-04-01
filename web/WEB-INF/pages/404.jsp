<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>404</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/404.css">
    <script src="${pageContext.request.contextPath }/js/404.js"></script>

</head>

<body>
    <div class="dowebok error">
        <div class="container-floud">
            <div class="col-xs-12 ground-color text-center">
                <div class="container-error-404">
                    <div class="clip">
                        <div class="shadow">
                            <span class="digit thirdDigit"></span>
                        </div>
                    </div>
                    <div class="clip">
                        <div class="shadow">
                            <span class="digit secondDigit"></span>
                        </div>
                    </div>
                    <div class="clip">
                        <div class="shadow">
                            <span class="digit firstDigit"></span>
                        </div>
                    </div>
                    <div class="msg">OH!
                        <span class="triangle"></span>
                    </div>
                </div>
                <h2 class="h1">很抱歉，你访问的页面去火星旅游了</h2>
            </div>
        </div>
    </div>
</body>
</html>