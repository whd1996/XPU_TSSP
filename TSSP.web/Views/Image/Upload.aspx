<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="TSSP.web.Views.Home.Upload" %>

<!DOCTYPE html>
 
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Upload</title>
</head>
<body>
    <h1>文件上传</h1>
    <form action="/Image/FileUpload" method="post" enctype="multipart/form-data">
        <h3>选择上传的文件:</h3><input type="file" name="file" id="file" />
        <br />
        <br />
        <input type="submit" name="submit1" value="上传" />
    </form>
</body>
</html>
