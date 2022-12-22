<?php
session_start();
?>
<?php
include_once 'connect.php';
$lovelist = "select * from lovelist order by id desc";
$reslist = mysqli_query($connect, $lovelist);
?>
<?php
include_once 'Nav.php';
?>

<link href="assets/css/vendor/dataTables.bootstrap4.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/vendor/responsive.bootstrap4.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/vendor/buttons.bootstrap4.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/vendor/select.bootstrap4.css" rel="stylesheet" type="text/css"/>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="header-title mb-3 size_18">恋爱清单<a href="/admin/lovelistAdd.php">
                        <button type="button" class="btn btn-success btn-sm right_10">
                            <i class="mdi mdi-circle-edit-outline"></i>新增
                        </button>
                    </a></h4>
                <table id="basic-datatable" class="table dt-responsive nowrap" width="100%">
                    <thead>
                    <tr>
                        <th>事件标题</th>
                        <th>完成状态</th>
                        <th>图片预览</th>
                        <th style="width:150px;">操作</th>
                    </tr>
                    </thead>


                    <tbody>
                    <?php
                    while ($list = mysqli_fetch_array($reslist)) {
                        ?>
                        <tr>
                            <td><?php echo $list['eventname'] ?></td>
                            <td><?php if ($list['icon']) { ?> <span class="badge badge-success-lighten">已完成 </span><?php } ?><?php if (!$list['icon']) { ?> <span class="badge badge-danger-lighten">未完成</span> <?php } ?></td>
                            <td><?php if ($list['imgurl']) { ?> <img
                                        style="width: 100px;height: 130px;object-fit: cover;box-shadow: 0 8px 12px #c9cbcfd6;border-radius: 6px"
                                        src="<?php echo $list['imgurl'] ?>">  <?php } else { ?>暂无图片 <?php } ?></td>
                            <td>
                                <a href="modlist.php?id=<?php echo $list['id'] ?>&icon=<?php echo $list['icon'] ?>&name=<?php echo $list['eventname'] ?>&imgurl=<?php echo $list['imgurl']; ?> ">
                                    <button type="button" class="btn btn-secondary btn-rounded">
                                        <i class=" mdi mdi-clipboard-text-play-outline mr-1"></i>修改
                                    </button>
                                </a>
                                <a href="javascript:del(<?php echo $list['id']; ?>,'<?php echo $list['eventname']; ?>');">
                                    <button type="button" class="btn btn-danger btn-rounded">
                                        <i class=" mdi mdi-delete-empty mr-1"></i>删除
                                    </button>
                                </a></td>
                        </tr>
                        <?php
                    }
                    ?>
                    </tbody>
                </table>

            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
<script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="../Style/pagelir/spotlight.bundle.js"></script>
<script>
    $(function () {
        $("img[src$=jpg],img[src$=gif],img[src$=JPG],img[src$=png],img[src$=jpeg]").addClass("spotlight").each(function () {
            this.onclick = function () {
                return hs.expand(this)
            }
        });
    })
</script>


<script>
    function del(id, eventname) {
        if (confirm('您确认要删除内容为 ' + eventname + ' 的事件吗')) {
            location.href = 'dellist.php?id=' + id + '&title' + eventname;
        }
    }

</script>
<?php
include_once 'Footer.php';
?>
<!-- third party js -->
<script src="assets/js/vendor/jquery.dataTables.min.js"></script>
<script src="assets/js/vendor/dataTables.bootstrap4.js"></script>
<script src="assets/js/vendor/dataTables.responsive.min.js"></script>
<script src="assets/js/vendor/responsive.bootstrap4.min.js"></script>
<script src="assets/js/vendor/dataTables.buttons.min.js"></script>
<script src="assets/js/vendor/buttons.bootstrap4.min.js"></script>
<script src="assets/js/vendor/buttons.html5.min.js"></script>
<script src="assets/js/vendor/buttons.flash.min.js"></script>
<script src="assets/js/vendor/buttons.print.min.js"></script>
<script src="assets/js/vendor/dataTables.keyTable.min.js"></script>
<script src="assets/js/vendor/dataTables.select.min.js"></script>
<!-- third party js ends -->
<!-- demo app -->
<script src="assets/js/pages/demo.datatable-init.js"></script>
<!-- end demo js-->
</body>
</html>