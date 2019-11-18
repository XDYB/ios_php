<?php
if (!defined('IN_ROOT')) {
    exit('Access denied');
}
Administrator(3);
$action = SafeRequest("action", "get");
$url = http() . $_SERVER['HTTP_HOST'] . '/source/index/cerapi.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo IN_CHARSET; ?>" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<title>证书管理</title>
<link href="static/admincp/css/main.css" rel="stylesheet" type="text/css" />
<link href="static/pack/asynctips/asynctips.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="static/pack/asynctips/jquery.min.js"></script>
<script type="text/javascript" src="static/pack/asynctips/asyncbox.v1.4.5.js"></script>
<script type="text/javascript" src="static/index/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="static/pack/layer/jquery.js"></script>
<script type="text/javascript" src="static/pack/layer/lib.js"></script>
<script type="text/javascript">
var pop = {
	up: function(scrolling, text, url, width, height, top) {
		layer.open({
			type: 2,
			maxmin: true,
			title: text,
			content: [url, scrolling],
			area: [width, height],
			offset: top,
			shade: false
		});
	}
}
function CheckAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		var e = form.elements[i];
		if (e.name != 'chkall') {
			e.checked = form.chkall.checked;
		}
	}
}
function checkemail(form) {
	var form = document.getElementById('upload'),
		formData = new FormData(form);
	$.ajax({
		url: '<?php echo $url;?>',
		type: 'POST',
		data: formData,
		async: false,
		cache: false,
		contentType: false,
		processData: false,
		success: function(data) {
			$("#msg").html(data);
			var str = data;
			var reg = RegExp('上传成功');
			if (str.match(reg)) {
				var t = setTimeout("location.reload()", 3000);
			}
		}
	});
}
</script>
</head>
<body>
<?php
switch ($action) {
    case 'del':
        Del();
        break;
    case 'editsave':
        EditSave();
        break;
    case 'saveadd':
        SaveAdd();
        break;
    default:
        main();
        break;
}
?>
</body>
</html>
<?php
function main()
{
    global $db;
    $sql = "select * from " . tname('cert') . " order by in_id asc";
    $result = $db->query($sql);
    $count = $db->num_rows($db->query(str_replace('*', 'count(*)', $sql)));
?>
<div class="container">
<script type="text/javascript">parent.document.title = 'EarCMS Board 管理中心 - 应用 - 证书管理';if(parent.$('admincpnav')) parent.$('admincpnav').innerHTML='应用&nbsp;&raquo;&nbsp;证书管理';</script>
<div class="floattop"><div class="itemtitle"><h3>证书管理</h3></div></div><div class="floattopempty"></div>
<table class="tb tb2">
<tr><th class="partition">编辑证书</th></tr>
</table>
<form name="form" method="post" action="?iframe=cert&action=editsave">
<table class="tb tb2">
<tr class="header">
<th>编号</th>
<th>证书标识(.plist)</th>
<th>证书名称(.sh)</th>
<th>公司名称(.sh)</th>
<!--th>证书目录</th-->
<th>描述文件到期时间</th>
<th>编辑操作</th>
</tr>
<?php if($count==0){ ?>
<tr><td colspan="2" class="td27">没有证书</td></tr>
<?php
}else{
while($row = $db->fetch_array($result)){
  $cername = explode(': ',$row['in_name']); 
  $cername = $cername[1];
  $i++;
?>
<tr class="hover">
<td class="td25"><input class="checkbox" type="checkbox" name="in_id[]" value="<?php echo $row['in_id']; ?>"><?php echo $row['in_ida'].$i; ?></td>
<td class="td29"><input type="text" name="in_iden<?php echo $row['in_id']; ?>" value="<?php echo $row['in_iden']; ?>" class="txt" style="margin:0;width:100%;" /></td>
<td class="td29"><input type="text" name="in_name<?php echo $row['in_id']; ?>" value="<?php echo $cername; ?>" class="txt" style="margin:0;width:100%;" /></td>
<td class="td29"><input type="text" name="in_nick<?php echo $row['in_id']; ?>" value="<?php echo $row['in_nick']; ?>" class="txt" style="margin:0;width:100%;" /></td>
<!--td><div class="parentboard"><input type="text" name="in_dir<?php echo $row['in_id']; ?>" value="<?php echo $row['in_dir']; ?>" class="txt" style="margin:0;width:100%;" readonly /></div></td-->
<td class="td29"><input type="text" name="in_nick<?php echo $row['in_id']; ?>" value="<?php echo $row['endt']; ?>" class="txt" style="margin:0;width:80%;" readonly /></td>
<td><input type="button" class="btn" value="删除" onclick="location.href='?iframe=cert&action=del&in_id=<?php echo $row['in_id']; ?>'" /></td>
</tr>
<?php
}
}
 ?></table>
<table class="tb tb2">
<tr><td class="td25"><input type="checkbox" id="chkall" class="checkbox" onclick="CheckAll(this.form)" /><label for="chkall">全选</label></td><td colspan="15"><div class="fixsel"><input type="submit" class="btn" name="editsave" value="批量修改" /></div></td></tr>
</table>
</form>

<table class="tb tb2">
<tr><th class="partition">新增证书</th></tr>
</table>
<iframe name="post_frame" style="display:none;"> </iframe>
<form id="upload" method="post" target="post_frame" enctype="multipart/form-data">
<table class="tb">
<tr>
<td>证书描述文件(.mobileprovision)</td>
<td>证书P12文件(.p12)</td>
<td>P12证书密码</td>
</tr>
<tr>
<td class="td25"><input type="file" accept=".mobileprovision" name="miao"></td>
<td class="td25"><input type="file" accept=".p12" name="p12"></td>
<input type="text" value="0" name="uid" style="display:none">
<input type="text" value="<?php echo $_COOKIE['in_adminname']; ?>" name="user" style="display:none">
<td class="td25"><input type="text" name="mima" id="mima"  placeholder="密码为空可不填写！"></td>
<tr><td class="td29"><input type="submit" onclick="checkemail(this.form)" value="确定上传" class="btn"></td></tr>
</table>
</form><text id="msg"/>
</div>

<?php
}
function SaveAdd()
{
    global $db;
    if (!submitcheck('saveadd')) {
        ShowMessage("表单验证不符，无法提交！", $_SERVER['PHP_SELF'], "infotitle3", 3000, 1);
    }
    $in_iden = SafeRequest("in_iden", "post");
	$in_nick = SafeRequest("in_nick","post");
    $in_name = SafeRequest("in_name", "post");
    $in_endt = SafeRequest("in_endt", "post");
    $in_dir = SafeRequest("in_dir", "post");
    if (empty($in_iden)) {
        ShowMessage("新增出错，证书标识不能为空！", "?iframe=cert", "infotitle3", 1000, 1);
    }
    if (empty($in_name)) {
        ShowMessage("新增出错，证书名称不能为空！", "?iframe=cert", "infotitle3", 1000, 1);
    }
    if (empty($in_dir)) {
        ShowMessage("新增出错，证书目录不能为空！", "?iframe=cert", "infotitle3", 1000, 1);
    }
    $in_id = $db->getone("select in_id from " . tname('cert') . " where in_dir='{$in_dir}'");
    if ($in_id) {
        $db->query("update " . tname('cert') . " set in_iden='{$in_iden}',in_nick='{$in_nick}',in_name='{$in_name}',endt='{$in_endt}' where in_id=" . $in_id);
    } else {
        $db->query("Insert " . tname('cert') . " (in_iden,in_name,in_nick,endt,in_dir) values ('{$in_iden}','{$in_name}','{$in_nick}','{$in_endt}','{$in_dir}')");
    }
    ShowMessage("恭喜您，证书新增成功！", "?iframe=cert", "infotitle2", 1000, 1);
}
function EditSave()
{
    global $db;
    if (!submitcheck('editsave')) {
        ShowMessage("表单验证不符，无法提交！", $_SERVER['PHP_SELF'], "infotitle3", 3000, 1);
    }
    $in_id = RequestBox("in_id");
    if ($in_id == 0) {
        ShowMessage("修改失败，请先勾选要编辑的证书！", "?iframe=cert", "infotitle3", 3000, 1);
    } else {
        $ID = explode(',', $in_id);
        for ($i = 0; $i < count($ID); $i++) {
            $in_iden = SafeRequest("in_iden" . $ID[$i], "post");
	        $in_nick = SafeRequest("in_nick" . $ID[$i],"post");
            $in_name = SafeRequest("in_name" . $ID[$i], "post");
            $in_dir = SafeRequest("in_dir" . $ID[$i], "post");
            if (empty($in_iden)) {
                ShowMessage("修改出错，证书标识不能为空！", "?iframe=cert", "infotitle3", 1000, 1);
            }
            if (empty($in_name)) {
                ShowMessage("修改出错，证书名称不能为空！", "?iframe=cert", "infotitle3", 1000, 1);
            }
            if (empty($in_dir)) {
                ShowMessage("修改出错，证书目录不能为空！", "?iframe=cert", "infotitle3", 1000, 1);
            }
            $db->query("update " . tname('cert') . " set in_iden='{$in_iden}',in_nick='{$in_nick}',in_name='{$in_name}',in_dir='{$in_dir}' where in_id=" . $ID[$i]);
        }
        ShowMessage("恭喜您，证书批量修改成功！", "?iframe=cert", "infotitle2", 3000, 1);
    }
}
function Del()
{
    global $db;
    $in_id = intval(SafeRequest("in_id", "get"));
    $in_dir = $db->getone("select in_dir from " . tname('cert') . " where in_id=" . $in_id);
    @unlink('data/cert/' . $in_dir . '.zip');
    @deldirs('data/cert/'.$in_dir);
    $db->query("delete from " . tname('cert') . " where in_id=" . $in_id);
    ShowMessage("恭喜您，证书删除成功！", "?iframe=cert", "infotitle2", 3000, 1);
}