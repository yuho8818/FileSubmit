<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作业提交</title>
    
    <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/fileinput.js"></script>
	<script type="text/javascript" src="themes/fa/theme.js"></script>
	<script type="text/javascript" src="js/locales/zh.js"></script>
	<style type="text/css" >
        @import "bootstrap/css/bootstrap.min.css"; 
        @import "css/fileinput.css"; 
    </style>

</head>
<body>

<div style="margin-left:30px;">
<h2>作业提交</h2>
<%request.setCharacterEncoding("UTF-8"); %>

<div>
    <p><strong>小提示：</strong></p>
    <p style="padding-left:20px;">!!!童靴们一定要确定好提交的是哪次作业!!!</p>
    <p style="padding-left:20px;">如果发现提交错了，需要重新提交，以相同的文件名提交即可，系统会自动替换。</p>
    <p style="padding-left:20px;">提交文件命名格式：第几次-学号-姓名，如：<span style="color:red">Python第五次-20154857-俞浩雄；</span></p>
    <p style="padding-left:20px;">提示文件提交成功表示提交好了，有问题联系我哈，</p>          
    <p  style="padding-left:350px;">by：俞浩雄 2017-10-27 08:43:12 </p>                
                     
                     
    
     </div>
 <div id="config_block" style="border:3px solid red;height:60px;padding:8px;width:80%;border-radius:5px">
    <span style="font-size:18px;">课程选择:</span> <select style="height:33.6px;width:200px;" id="class_Path" name="class_Path">
    <option value="Hadoop(杜黎明老师)">Hadoop(杜黎明老师)
    </option><option value="Python(徐娇老师)">Python(徐娇老师)</option></select>
    
    <span style="font-size:18px;">作业次数:</span><select style="height:33.6px;width:150px;" id="file_Time"  name="file_Time">
    <%for(int i=1;i<15;i++){
    %> <option value="第<%=i%>次">第<%=i%>次</option><%  
    } %>
    </select>
    <a class="btn btn-default" href="javascript:pathConfig()">确定</a>
 </div>
    
<script>
function pathConfig(){
   var class_Path = $("#class_Path").val();
   var file_Time = $("#file_Time").val();
   $("#form_submit").attr("action","UploadServlet?class_Path="+class_Path+"&file_Time="+file_Time);
   $("#config_block").attr("style","border:3px solid green;height:60px;padding:8px;width:80%;border-radius:5px");
   $("#form_submit").attr("hidden",false);
}

</script>


<form hidden="hidden" id="form_submit" method="post" action="UploadServlet" enctype="multipart/form-data">

    <div style="margin-top:30px;width:600px;">
    <label class="control-label" style="font-size:17px;">请选择文件</label>
    <input id="file-submit"  type="file" name="uploadFile" class="file"/>
    <script>
$("#file-submit").fileinput({
    language:"zh",
    hideThumbnailContent: true, // hide image, pdf, text or other content in the thumbnail preview
    
});
</script>
    </div>  
</form>

</div>
</body>

</html>