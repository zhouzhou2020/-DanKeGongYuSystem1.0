<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- saved from url=(0050)https://www.dankegongyu.com/user-center/index.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8"/>
    <title>个人中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name='keywords' content='月租,年租,租房,租期,蛋壳公寓,房租'>
    <meta name="description"
          content="让租房变得简单和快乐"/>
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" >
    <!-- Set render engine for multi engine browser -->
    <meta name="renderer" content="webkit">
    <!-- Disable Baidu Siteapp -->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link media="all" type="text/css" rel="stylesheet" href="css/bootstrap-ec3bb52a00.min.css" >

    <link media="all" type="text/css" rel="stylesheet" href="css/swiper-0b941af5db.min.css" > 

    <link media="all" type="text/css" rel="stylesheet" href="css/common-4ce4e00253.css" >


    <link media="all" type="text/css" rel="stylesheet" href="css/user_center-78c5d29420.css">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
//     var username = $("#username").val();
//     var phone = $("#phone").val();
//     var sex = $("#sex").val();
    
//     function updateInfo(){
//     	alert();
//     	$.ajax({
//     		type:"post",
//     		url:"UpdateSvl",
//     		data:{"username":username,"phone":phone,"sex":sex},
//     		success:function(flag){//会在返回完整，请求成功时调用，其中的参数是返回值
//     			//对返回值进行操作
//     			alert(flag);
//     		},
    	
//     	});
//     }
    </script>
    </head>



<body>

<!-- 导入头部文件 -->
	<jsp:include page="/common/head.jsp"/>


<div class="website-main">
    
        <!--person center banner-->
<!--个人中心 banner 图 -->




        <!--person center banner end-->
<div class="p-user " style="display: none;">
    <!--crumbs-->

    <div class="p-wrap clearfix w1032">

        <!--slide menu end-->

        <div class="slide-main page-user">
            <div class="loadImg js-loading" style="display: none;"></div>
            <!--个人中心首页部分-->
            <div class="ps-hd js-ps-hd">
                <img class="js-user-img" src="img/public-20180206-FgzEN9SiY65F_cmpAhVWLXfPjYpp.png" alt="用户头像">
                <div class="ps-info">
                    <p class="name js-nickname">188****3825</p>
                </div>
                <a class="ps-edit js-edit" href="javascript:;">修改资料</a>
            </div>
            <!--个人中心首页部分 end-->
            <h3 class="main-name">我的合同</h3>
            <div class="main-cont clearfix">
                <!--有合同-->
                <div class="ctt-box js-ctt-box"></div>
                <!--暂无合同-->
                <div class="sp-empty mtop50" style="display: block;">
                    <p class="sp-txt">您还没有履行中的合同，快去签约吧！～</p>
                    <a class="sp-btn inblock mtop40" href="https://www.dankegongyu.com/room">去找房</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 编辑个人资料页 -->
<div class="p-edit-info none" style="display: block;">
    <!--crumbs-->
    <div class="m-crumbs w1032">
        <a href="https://www.dankegongyu.com/">蛋壳公寓</a>
        <span>&gt;</span>
        个人设置
        <span>&gt;</span>
        编辑个人资料
    </div>
    <div class="p-wrap clearfix w1032">
        <!--slide menu-->
        <div class="slide-menu">
            <ul class="menu-list-box clearfix user-center">
                        <li class="h3">个人设置</li>
                                <li class="menu-list current">
                <a href="javascript:; ">  个人中心</a>
            </li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/collect.jsp">  我的收藏</a>
            </li>
<!--                                 <li class="menu-list "> -->
<!--                 <a href="https://www.dankegongyu.com/user-center/telphone.html">  修改手机号</a> -->
<!--             </li> -->
                                <li class="h3">租客服务</li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/contract.jsp">  我的合同</a>
            </li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/problem.jsp">  租房问题</a>
            </li>
                                <li class="h3">意见/建议</li>
                                <li class="menu-list ">
                <a href="${pageContext.request.contextPath}/feedback.html">  意见反馈</a>
            </li>
            </ul>
<script>
    //清空修改手机号页面sessionStorage缓存;
    if (document.URL.indexOf("telphone") == "-1") {
        sessionStorage.clear();
    }
</script>     
   </div>
        <!--slide menu end-->

        <div class="slide-main page-user-info">
            <h3 class="main-name">编辑个人资料</h3>
            <div class="main-cont clearfix">
                <div class="loadImg js-loading" style="display: none;"></div>
                <div class="edit-head">
                    <img class="js-user-img" src="img/public-20180206-FgzEN9SiY65F_cmpAhVWLXfPjYpp.png" alt="">
                </div>
                <form action="UpdateSvl" >
                <ul class="info-list">
                    <li class="nickname" data-name="昵称：">
                        <input class="js-nickname-ipt" name="username" value="${requestScope.username }" id="username" type="text" maxlength="20" placeholder="请输入昵称">
                        <p class="empty">请填写昵称</p>
                    </li>
                    <li class="gender js-gender" data-name="性别：" name="sex" id="sex">
                    <c:if test="${requestScope.sex eq '男' }">
                        <label><input type="radio" name="gender" value="男" checked="checked">男</label>
                    </c:if>
                    <c:if test="${requestScope.sex eq '女' }">
                        <label><input type="radio" name="gender" value="女" checked="checked">女</label>
                    </c:if>
                    <c:if test="${empty requestScope.sex }">
                        <label><input type="radio" name="gender" value="男">男</label>
                        <label><input type="radio" name="gender" value="女">女</label>
                    </c:if>


                    

                    </li>
<!--                     <li class="constel" data-name="星座："> -->
<!--                         <input class="js-select-constel" type="text" readonly="readonly" placeholder="请选择您的星座" data-index="-1"> -->
<!--                         <div class="constel-val js-constel-val" style="display: none;"> -->
<!--                         <a data-val="0" href="javascript:;">白羊座</a> -->
<!--                         <a data-val="1" href="javascript:;">金牛座</a> -->
<!--                         <a data-val="2" href="javascript:;">双子座</a> -->
<!--                         <a data-val="3" href="javascript:;">巨蟹座</a> -->
<!--                         <a data-val="4" href="javascript:;">狮子座</a> -->
<!--                         <a data-val="5" href="javascript:;">处女座</a> -->
<!--                         <a data-val="6" href="javascript:;">天秤座</a> -->
<!--                         <a data-val="7" href="javascript:;">天蝎座</a> -->
<!--                         <a data-val="8" href="javascript:;">射手座</a> -->
<!--                         <a data-val="9" href="javascript:;">摩羯座</a> -->
<!--                         <a data-val="10" href="javascript:;">水瓶座</a> -->
<!--                         <a data-val="11" href="javascript:;">双鱼座</a></div> -->
<!--                         <span class="all-icon select-icon js-select-icon"></span> -->
<!--                         <p class="empty">请选择星座</p> -->
<!--                     </li> -->
                    <li class="change-iphone" data-name="手机号："><input class="phone" type="text" id="phone" name="phone" value="${sessionScope.phone }"></li>
               
                </ul>
<!--                 <span>请选择星座</span> -->
<!--                 <select class="selectStar"> -->
<!--                 <option>白羊座</option> -->
<!--                 <option>金牛座</option> -->
<!--                 </select> -->
                <div class="base-btn mtop30">
                    <input type="submit" class="button js-button w295" value="保存" >
                    <p>${msg }</p>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<!-- 导入尾部文件 -->
	<jsp:include page="/common/tail.jsp"/>
<script type="text/javascript">
	  /*退出登录*/
	
	$(".dklogout").on("click",function(){
        $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': 'fUZuy6jAwalUUxhCLOuLnVnf2fy66rgfXVeEZ3mV'
    },
    cache: false,
    async: false,
});;
        $.ajax({
            url:'/web-api/user/logout',
            type:"POST",
            success:function(data){
                location.reload()
            },
            error:function(err){
                console.log(err);
            }
        })
    })
    
    $('.dklogined-wrapper').hover(function () {
        $('.dklogined-center').show()
        $('.dklogined').css('background', 'url(https://public.wutongwan.org/public-20180519-FqitD4IbypL6rbHSVa_yq4iSsaQE)')
    }, function () {
        $('.dklogined-center').hide()
        $('.dklogined').css('background', 'url(https://public.wutongwan.org/public-20180519-FtfmOHVmUq7-6Tzol_cyQBE9yt3y)')
    })

    $('.scroll-to-phone').hover(function () {
        $('.scroll-to-phone div').show()
        $('.scroll-to-xcx div').hide()
        $('.xcx-close').hide()
    }, function () {
        $('.scroll-to-phone div').hide()
    })

    $('.scroll-to-app').hover(function () {
        $('.scroll-to-app div').show()
        $('.scroll-to-xcx div').hide()
        $('.scroll-to-app a').css('background-color', '#3dbcc6')
        $('.xcx-close').hide()
    }, function () {
        $('.scroll-to-app div').hide()
        $('.scroll-to-app a').css('background-color', '#333333')
    })

    $('.scroll-to-xcx').hover(function () {
        $('.scroll-to-xcx div').show()
        $('.scroll-to-xcx a').css('background-color', '#3dbcc6')
    }, function () {
        $('.scroll-to-xcx div').hide()
        $('.scroll-to-xcx a').css('background-color', '#333333')
        $('.xcx-close').hide()
    })

    $('.xcx-close').on('click', function () {
        $('.scroll-to-xcx div').hide()
        $('.xcx-close').hide()
    })

    $('.crumbs-classify a').on('click', function () {
        $(this).addClass('crumbs-sel')
        $(this).siblings().removeClass('crumbs-sel')

        var code = '.crumbs-list.' + $(this).attr('code')
        $(code).show()
        $(code).siblings().hide()
    })

    
    getCityList('北京', 'bj')
    getDircList('北京', 'bj', '')
    getBlockList('北京', 'bj', '')
    getPlotList('北京', 'bj', '')              

</script>
<!--APP推广层 end-->
    <script type="text/javascript">
        var webApi = "/web-api";

        // 为IE添加数组indexOf方法
        Array.prototype.indexOf = function (str) {
            for (var i = 0; i < this.length; i++) {
                if (str == this[i]) {
                    return i;
                }
            }
            return -1;
        }
        function starFn(obj, start) {
            var ret,
                    len = obj.length,
                    i = 0;
            ret = obj.substring(0, obj.length - 8)
            for (; i < start; i++) {
                ret += "*"
            }
            ret += obj.substring(len - 3);
            return ret
        }

        // user index
        var userIndex = {
            init: function () {
                this.userInfo();
            },
            /**
             * [获取用户信息]
             */
            userInfo: function () {
                var self = this;
                $.ajax({
                    url: webApi + "/user/info",
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        var userinfo = data.data
                        var avatar = userinfo.avatar,
                                nickname = userinfo.nickname,
                                hello = self.helloFn();
                        self.contract();
                        //用户头像
                        $(".js-user-img").attr("src", avatar);
                        $(".js-nickname").html(nickname);
                        $(".js-hello").html(hello);
                    }
                });
            },
            helloFn: function () {
                var hour = new Date().getHours(),
                        ret;
                if (hour > 1 && hour < 12) {
                    ret = "早上好";
                } else if (hour > 12 && hour < 19) {
                    ret = "下午好";
                } else {
                    ret = "晚上好";
                }
                return ret
            },
            /**
             * 加载合同列表
             */
            contract: function () {
                var self = this;
                $.ajax({
                    type: "GET",
                    url: webApi + "/contract/list",
                    dataType: "json",
                    success: function (data) {
                        $(".js-loading").fadeOut(300)
                        if (!data.success) {
                            $(".sp-empty").show();
                            return false;
                        }
                        // 以下为加载成功
                        var dataList = data.data;
                        var arr = [];
                        $.each(dataList, function (i, e) {
                            arr.push(self.tagList(e))
                        });
                        $(".js-ctt-box").html(arr.join(""))
                    }

                });
            },
            tagList: function (obj) {
                var className;
                if (obj.stage === "执行中") {
                    className = "on";
                }
                var arr = ['<div class="ctt-list ' + className + '">',
                    '<div class="ads">' + obj.room_address + '</div>',
                    '<div class="date">',
                    '<p class="sign">签约日：' + obj.sign_date + '</p>',
                    '<p class="ctt">合同期：' + obj.start_date + ' ～ ' + obj.end_date + '</p>',
                    '</div>',
                    '<span class="status">' + obj.stage + '</span>',
                    '</div>']
                return arr.join("")
            }
        }
        //index end

        // user info
        var pageUserInfo = {
            init: function () {
                this.eventFn();
                this.constel();
                this.userInfo();
            },
            data: {
                constelList: ["白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座", "水瓶座", "双鱼座"]
            },
            /*事件函数*/
            eventFn: function () {
                var self = this;
                /*window事件*/
                $(document).on("click", function () {
                    /*constel*/
                    var $ipt = $(".js-select-constel"),
                            $valbox = $(".js-constel-val");
                    $valbox.hide();
                    $ipt.removeClass("open");
                    /*constel end*/
                })

                /*保存信息*/
                $(".js-button").on("click", function () {


                    var This = this,
                            num = 0,
                            $nickname = $(".js-nickname-ipt"),
                            keyFn = function () {
                                if ($nickname[0].onoff) {
                                    return false;
                                }
                                ;
                                $nickname[0].onoff = true;
                                $nickname.on("keyup", function () {
                                    if ($(this).val() !== "") {
                                        $(this).parent().removeClass("error");
                                    } else {
                                        $(this).parent().addClass("error");
                                    }
                                })
                            };
                    if ($nickname.val() === "") {
                        $(".nickname").addClass("error");
                        keyFn();
                        num++ 
                    }
                    ;
                    if ($.trim($(".js-select-constel").val()) === "") {
                        $(".constel").addClass("error");
                        num++
                    }

                    if (num || $(this).hasClass("disabled")) {
                        return false;
                    }

                    $(this).addClass("disabled");
                    /******以下验证成功操作*******/
                    var opt = {
                        nickname: $nickname.val(),
                        gender: $(".js-gender input:checked").val() || "",
                        constellation: $(".js-select-constel").val()
                    }
                    $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': 'fUZuy6jAwalUUxhCLOuLnVnf2fy66rgfXVeEZ3mV'
    },
    cache: false,
    async: false,
});                    $.ajax({
                        url: webApi + "/user/info",
                        type: "POST",
                        dataType: "json",
                        data: opt,
                        success: function (data) {
                            if (!data.success) {
                                setTimeout(function () {
                                    $(This).removeClass("disabled")
                                }, 300);
                                return false;
                            }
                            location.reload()
                        }
                    });
                })
            },
            /**
             * [获取用户信息]
             */
            userInfo: function () {
                var self = this;
                $.ajax({
                    url: webApi + "/user/info",
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        var userinfo = data.data
                        var avatar = userinfo.avatar,
                                nickname = userinfo.nickname,
                                mobile = userinfo.mobile,
                                gender = userinfo.gender,
                                constelval = userinfo.constellation,
                                dataIndex = self.data.constelList.indexOf(constelval);
                        $(".js-loading").fadeOut(300);
                        //用户头像 /昵称 /索引值&&星座 /选中星座
                        $(".js-user-img").attr("src", avatar);
                        $(".js-nickname-ipt").val(nickname);
                        $(".js-phone").html(starFn(mobile, 5))
                        $(".js-select-constel").attr("data-index", dataIndex).val(constelval);
                        $(".js-constel-val [data-val='" + dataIndex + "']").addClass("selected");
                        $("[name='gender'][value='" + gender + "']").attr("checked", "checked");
                    }
                });

            },
            /**
             * 星座操作
             */
            constel: function () {
                var constelArr = this.data.constelList,
                        arr = [];
                var $ipt = $(".js-select-constel"),
                        $valbox = $(".js-constel-val");

                //生成星座列表
                $.each(constelArr, function (i, e) {
                    arr.push('<a data-val="' + i + '" href="javascript:;">' + e + '</a>')
                })
                $valbox.html(arr.join(""))

                //展开星座
                $(".js-select-constel,.js-select-icon").on("click", function (event) {
                    event.stopPropagation()
                    $index = $ipt.attr("data-index");
                    var pos = !$index ? 0 : 50 * ($index - 1);
                    if (!$ipt.hasClass("open")) {
                        //选中操作
                        //添加展开标识
                        $ipt.addClass("open");
                        //展开并定位初始滚动位置
                        $valbox.show().scrollTop(pos);
                    } else {
                        $valbox.hide()
                        $ipt.removeClass("open");
                    }
                });
                //选择星座
                $(".js-constel-val a").on("click", function (event) {
                    event.stopPropagation();
                    var $this = $(this),
                            $index = $(this).attr("data-val");
                    $(".constel").removeClass("error");
                    $this.addClass("selected").siblings().removeClass("selected");
                    $ipt.attr("data-index", $index).val($this.html()).removeClass("open");
                    $valbox.hide();
                })
            }
        }
        //info end
        $(function () {
            //首页初始化
            userIndex.init();

            //显示个人资料页面
            $(".js-edit").on("click", function () {
                $(".p-user").hide();
                $(".p-edit-info .js-loading").show();
                $(".p-edit-info").show();
                pageUserInfo.init();
            })
        })


        sa.quick('autoTrack', {
            'page_type': '个人中心频道',
            'source_type': '个人中心',
            'house_positiontype': '',
            'house_position': '',
            'house_scope': '',
            'house_price': '',
            'house_type': '',
            'business_circle': '',
            'house_rentway': '',
            'house_area': '',
            'house_id': '',
            'housedel_id': '',
            'resblock_name': '',
        });
    </script>



</body></html>