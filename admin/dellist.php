<?php
session_start();
?>
<?php
include_once 'connect.php';
$id = $_GET['id'];
$icon = $_GET['icon'] ?? '';
$name = $_GET['name'];
$file = $_SERVER['PHP_SELF'];

if (isset($_SESSION['loginadmin']) && $_SESSION['loginadmin'] <> '') {
    if (is_numeric($id)) {
        $sql = "delete from lovelist where id = $id";
        $result = mysqli_query($connect, $sql);
        if ($result) {
            echo "<script>alert('删除事件成功');location.href = '/admin/lovelist.php';</script>";
        } else {
            echo "<script>alert('删除内容失败)';history.back();</script>";
        }
    } else {
        echo "<script>alert('参数错误');history.back();</script>";
    }
} else {
    echo "<script>alert('非法操作，行为已记录');location.href = 'warning.php?route=$file';</script>";
}

