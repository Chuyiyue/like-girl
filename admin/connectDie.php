<!--
 * @Author: Ki.
 * @Date: 2022-12-21 07:35:43
 * @LastEditors: Ki.
 * @LastEditTime: 2022-12-21 07:51:06
 * @Description: 花有重开日 人无再少年
 * Copyright (c) 2022 by Ki All Rights Reserved. 
-->


<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8"/>
    <title>数据库连接失败</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Coderthemes" name="author"/>

    <!-- App css -->
    <link href="/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/admin/assets/css/app.min.css" rel="stylesheet" type="text/css"/>
    <link href="/Style/css/loading.css" rel="stylesheet">
</head>

<style>
    .card {
        border-radius: 15px;
    }

    .card-header.pt-4.pb-4.text-center.bg-primary {
        border-radius: 15px 15px 0 0;
    }

    .bg-primary {
        background-color: #e91e63 !important;
    }

    .btn-primary {
        padding: 10px 25px;
        border-radius: 20px;
    }

    .info {
        margin-bottom: 20px;
        font-size: 1rem;
    }
    .mar_top{
        margin-top: 20px;
    }
    .btn-success{
        border-radius: 20px;
    }
</style>

<body class="authentication-bg">

<div class="account-pages mt-5 mb-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="card">

                    <!-- Logo -->
                    <div class="card-header pt-4 pb-4 text-center bg-primary">
                        <a href="##">
                                <span
                                        style="color: #fff;font-size: 1.3rem;font-family: '宋体';font-weight: 700;">数据库连接失败</span>
                        </a>
                    </div>

                    <div class="card-body p-4">

                        <div class="text-center w-75 m-auto">
                            <h4 class="text-dark-50 text-center mt-0 font-weight-bold">Like_Girl 5.0.0</h4>
                            <div class="info">请检查数据库信息是否配置正确<i style="color: #ff9b9b;"></i></div>
                        </div>
                        <div class="text-center w-75 m-auto" style="margin-bottom: 40px!important;">
                            <img src="https://img.gejiba.com/images/2bce316a4c0cb6754127769d614d4a82.png"
                                 style="width: 100%;border-radius: 10px;box-shadow: 0 5px 12px #b9c7dc;" alt="">
                        </div>
                        <div class="text-center info">配置成功后可到admin目录下删除当前页面<i style="color: #ff9b9b;"></i></div>

                        <div class="form-group mb-0 text-center">
                            <a href="https://blog.kikiw.cn/index.php/archives/43/">
                                <button
                                        class="btn btn-primary" type="submit"> 配置教程
                                </button>
                            </a>
                            <div class="mar_top">
                                <a href="../admin">
                                    <button
                                            class="btn btn-success" type="submit"> 已配置成功点我跳转登录
                                    </button>
                                </a>
                            </div>
                        </div>

                    </div> <!-- end card-body -->
                </div>
                <!-- end card -->

            </div>
            <!-- end row -->

        </div> <!-- end col -->
    </div>
    <!-- end row -->
</div>
<!-- end container -->
</div>
<!-- end page -->

<footer class="footer footer-alt">
    Copyright © 2022 Ki. && <a href="https://blog.kikiw.cn/index.php/archives/24/" target="_blank">Like_Girl</a> All
    Rights Reserved.
</footer>
<script src="../Style/jquery/jquery.min.js"></script>
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
<!-- App js -->
<script src="/admin/assets/js/app.min.js"></script>
</body>

</html>

