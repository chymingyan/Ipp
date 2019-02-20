<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8"> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>ipp智能巡检平台</title>

    <!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
	<!--bootstrap treeview-->
	<link href="static/css/bootstrap-treeview.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
  </head>
<body style=" margin:0; padding:0">
 
<div id="container">
 
<div id="header" style="background-color:#00001a;color:#ffffff; height:50px;">
{{.Head}}
</div>
 
<div id="menu" style="background-color:#00001a;color:#ffffff;width:200px;float:left;min-height:550px">
{{.Menu}}
</div>
 
<div id="content" style="background-color:#EEEEEE;min-height:550px;width:1297px;float:right;">
{{.Content}}</div> 
</div>
 {{.Scripts}}
</body>
</html>

