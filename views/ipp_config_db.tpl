<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
 <h1 class="page-header">主机数据库配置</h1>
<ul class="nav nav-pills">
  <li role="presentation" ><a href="/config">主机系统配置</a></li>
  <li role="presentation" class="active"><a href="/targetdbs">数据库配置</a></li>
</ul>


<div class="panel panel-default">
  <!-- Default panel head -->
  <div class="panel-heading">Panel heading</div>
<!-- Default panel head -->
<div class="panel-body">
   <form class="navbar-form navbar-right">
<!--数据库编号-->
<div class="input-group">
 <!-- <span class="input-group-addon" id="basic-addon1">数据库编号:</span>-->
  <input type="text" class="form-control" placeholder="数据库编号" aria-describedby="basic-addon1">
</div>
<!--数据库IP-->
<div class="input-group">
  <!--<span class="input-group-addon" id="basic-addon1">数据库IP:</span>-->
  <input type="text" class="form-control" placeholder="数据库IP" aria-describedby="basic-addon1">
</div>
<!--数据库端口-->
<div class="input-group">
<!--  <span class="input-group-addon" id="basic-addon1">数据库端口:</span>-->
  <input type="text" class="form-control" placeholder="数据库端口" aria-describedby="basic-addon1">
</div>
<!--数据库用户名-->
<div class="input-group">
 <!-- <span class="input-group-addon" id="basic-addon1">数据库用户名:</span>-->
  <input type="text" class="form-control" placeholder="数据库用户名" aria-describedby="basic-addon1">
</div>
<!--数据库用户密码-->
<div class="input-group">
 <!-- <span class="input-group-addon" id="basic-addon1">数据库用户密码:</span>-->
  <input type="text" class="form-control" placeholder="数据库用户密码" aria-describedby="basic-addon1">
</div>
<!--服务名称-->
<div class="input-group">
<!--  <span class="input-group-addon" id="basic-addon1">服务名称:</span>-->
  <input type="text" class="form-control" placeholder="服务名称" aria-describedby="basic-addon1">
</div>
<!--自定义分组-->
<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     自定义分组 <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">ORACLE 9I</a></li>
    <li><a href="#">ORACLE 10G</a></li>
    <li><a href="#">ORACLE 11G</a></li>
    <li><a href="#">ORACLE 12C</a></li>
	<li><a href="#">ORACLE 18C</a></li>
  </ul>
</div>
<!--弹框添加分组-->
<button type="button" class="btn btn-default" aria-label="Left Align">
  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
</button>
<!--逻辑备份-->
逻辑备份:
<div class="btn-group" role="group" >
  <button type="button" class="btn btn-default">YES</button>
  <button type="button" class="btn btn-default">NO</button>
</div>
<!--EXP备份路径-->
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">EXP备份路径:</span>
  <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
</div>

<!--Oracle数据库版本-->
<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     Oracle数据库版本 <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">ORACLE 9I</a></li>
    <li><a href="#">ORACLE 10G</a></li>
    <li><a href="#">ORACLE 11G</a></li>
    <li><a href="#">ORACLE 12C</a></li>
	<li><a href="#">ORACLE 18C</a></li>
  </ul>
</div>
<!--选择目标主机-->
选择目标主机:
<button type="button" class="btn btn-default" aria-label="Left Align">
  <span class="glyphicon glyphicon-hdd" aria-hidden="true"></span>
</button>
<a class="btn btn-primary" href="#" role="button">测试链接</a>
<a class="btn btn-primary" href="#" role="button">保存主机</a>
<a class="btn btn-primary" href="#" role="button">清空</a>
</form>
  </div>
  <!--表格-->
   <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,001</td>
                  <td>Lorem</td>
                  <td>ipsum</td>
                  <td>dolor</td>
                  <td>sit</td>
                </tr>
                <tr>
                  <td>1,002</td>
                  <td>amet</td>
                  <td>consectetur</td>
                  <td>adipiscing</td>
                  <td>elit</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>Integer</td>
                  <td>nec</td>
                  <td>odio</td>
                  <td>Praesent</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>libero</td>
                  <td>Sed</td>
                  <td>cursus</td>
                  <td>ante</td>
                </tr>
                <tr>
                  <td>1,004</td>
                  <td>dapibus</td>
                  <td>diam</td>
                  <td>Sed</td>
                  <td>nisi</td>
                </tr>
                <tr>
                  <td>1,005</td>
                  <td>Nulla</td>
                  <td>quis</td>
                  <td>sem</td>
                  <td>at</td>
                </tr>
                <tr>
                  <td>1,006</td>
                  <td>nibh</td>
                  <td>elementum</td>
                  <td>imperdiet</td>
                  <td>Duis</td>
                </tr>
                <tr>
                  <td>1,007</td>
                  <td>sagittis</td>
                  <td>ipsum</td>
                  <td>Praesent</td>
                  <td>mauris</td>
                </tr>
                <tr>
                  <td>1,008</td>
                  <td>Fusce</td>
                  <td>nec</td>
                  <td>tellus</td>
                  <td>sed</td>
                </tr>
                <tr>
                  <td>1,009</td>
                  <td>augue</td>
                  <td>semper</td>
                  <td>porta</td>
                  <td>Mauris</td>
                </tr>
                <tr>
                  <td>1,010</td>
                  <td>massa</td>
                  <td>Vestibulum</td>
                  <td>lacinia</td>
                  <td>arcu</td>
                </tr>
                <tr>
                  <td>1,011</td>
                  <td>eget</td>
                  <td>nulla</td>
                  <td>Class</td>
                  <td>aptent</td>
                </tr>
                <tr>
                  <td>1,012</td>
                  <td>taciti</td>
                  <td>sociosqu</td>
                  <td>ad</td>
                  <td>litora</td>
                </tr>
                <tr>
                  <td>1,013</td>
                  <td>torquent</td>
                  <td>per</td>
                  <td>conubia</td>
                  <td>nostra</td>
                </tr>
                <tr>
                  <td>1,014</td>
                  <td>per</td>
                  <td>inceptos</td>
                  <td>himenaeos</td>
                  <td>Curabitur</td>
                </tr>
                <tr>
                  <td>1,015</td>
                  <td>sodales</td>
                  <td>ligula</td>
                  <td>in</td>
                  <td>libero</td>
                </tr>
              </tbody>
            </table>
          </div>

</div>    
</div>
