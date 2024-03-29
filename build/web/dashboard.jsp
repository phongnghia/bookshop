<%-- 
    Document   : dashboard
    Created on : Feb 15, 2021, 10:23:07 PM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin - BookShop</title>
        <!-- Favicons -->
        <link rel="shortcut icon" href="static/image/logo/sm_logo/logo.png">

        <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

        <!-- Font-awesome 4.7.0, 5.10.0 --> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

        <!-- Bootstrap 4 -->
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">

        <!-- Slick -->
        <link rel="stylesheet" type="text/css" href="static/css/slick-theme.css">
        <link rel="stylesheet" type="text/css" href="static/css/slick.css">

        <!-- scss,css -->
        <link rel="stylesheet" type="text/css" href="static/css/plugins/admin.css">

        <!-- Modernizr -->
        <script src="static/js/vendor/modernizr-3.5.0.min.js"></script>
    </head>
    <body>

        <%
            String tendangnhap = (String) session.getAttribute("tendangnhap");
            String hinhanh = (String) session.getAttribute("hinhanh");
            String quyentruycap = (String) session.getAttribute("quyentruycap");
        %>


        <div class="admin">
            <div class="col-admin-3">
                <div class="admin__menu">
                    <div class="admin__title py-2">
                        <h5>Book<span>Shop</span></h5>
                    </div>
                    <div class="admin__avt pt-3">
                        <div class="admin__img">
                            <img src="static/image/user/<%=hinhanh%>">
                        </div>
                    </div>
                    <hr>
                    <div class="admin__list">
                        <ul>
                            <li>
                                <a class="admin__active" href="#home">
                                    <i class="fas fa-home mr-3"></i>
                                    Trang chủ
                                </a>
                            </li>
                            <li>
                                <a href="#mn_product">
                                    <i class="fab fa-product-hunt mr-3"></i>
                                    Quản lý sản phẩm
                                </a>
                            </li>
                            <li>
                                <a href="#mn_bill">
                                    <i class="fas fa-file-invoice-dollar mr-3"></i>
                                    Quản lý hóa đơn
                                </a>
                            </li>
                            <li>
                                <a href="#mn_user">
                                    <i class="fas fa-users mr-3"></i>
                                    Quản lý khách hàng
                                </a>
                            </li>
                            <li>
                                <a class="admin__logout" href="LogoutAdminServ">
                                    <i class="fas fa-sign-out-alt mr-3"></i>
                                    Đăng xuất
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="copyright">
                        <label>Copyright @2021. Team 4 Internship Project</label>
                    </div>
                </div>
            </div>
            <div class="col-admin-9">
                <div class="content__title border-bottom">
                    <h5></h5>
                    <div class="content__admin">
                        <i class="fas fa-shield-alt mr-2"></i>
                        <span><%=tendangnhap%></span>
<!--                        <i class="fa fa-cog" aria-hidden="true"></i>-->
                    </div>	
                </div>
                <div class="admin__item admin__home py-4" id="home">
                    <!-- <img src="image/icon/greeting.png"> -->
                    <div class="admin__chart">
                        <canvas id="myChart" width="200" height="100"></canvas>
                    </div>
                </div>
                <div class="admin__item admin__product" id="mn_product">
                    <label class="py-2 admin__product__title">Danh sách sản phẩm</label>
                    <div class="py-3">
                        <a class="btn btn-success addProduct rounded-0" href="addproduct.html?">Thêm mới</a>
                    </div>
                    <div class="form-group py-2">
                        <label>Mã loại sản phẩm</label>
                        <select class="select__maloai" id="maloai" name="maloai">
                        </select>
                    </div>
                    <div class="list__product">
                        <table>
                            <thead>
                                <tr>
                                    <th>Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá sản phẩm</th>
                                    <th>Giảm giá</th>
                                    <th colspan="3">Trạng thái</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                        <div  class="page__product">

                        </div>
                    </div>
                </div>
                <div class="admin__item admin__bill" id="mn_bill">
                    <label class="py-2 admin__product__title">Danh sách hóa đơn</label>
                    <div class="list__bill">
                        <table>
                            <thead>
                                <tr>
                                    <th>Mã hóa đơn</th>
                                    <th>Tên đăng nhập</th>
                                    <th>Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                    <th colspan="3">Trạng thái</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                        <div  class="page__bill_account">

                        </div>
                    </div>
                </div>
                <div class="admin__item admin__user" id="mn_user">
                    <label class="py-2 admin__product__title">Danh sách khách hàng</label>
                    <div class="list__user">
                        <table>
                            <thead>
                                <tr>
                                    <th>Tên đăng nhập</th>
                                    <th>Họ và tên</th>
                                    <th>Email</th>
                                    <th>Số điện thoại</th>
                                    <th>Địa chỉ</th>
                                    <th>Quyền truy cập</th>
                                    <th>Trạng thái</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                        <div  class="page__account">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Dialog delete -->
        <div class="container">
<!--            <button class="btn btn-danger btn-click rounded-0">Xóa</button>-->
        </div>

        <div class="modal__delete">
        </div>



        <!-- JavaScript, Bootstrap 4, slick, data -->
        <script src="static/js/vendor/jquery-3.2.1.min.js"></script>
        <script src="static/js/jquery-3.5.1.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/popper.min.js"></script>
        <script src="static/js/slick.min.js"></script>
        <script src="static/js/vendor/data.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
        <!-- JavaScript Custom -->
        <script src="static/js/admin.js"></script>
    </body>
</html>