<#global basePath=springMacroRequestContext.contextPath>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>网上党校-在线考试</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="${basePath}/resources/img/favicon.ico?v=f6d031" type="image/x-icon">
    <link rel=icon href="${basePath}/resources/img/favicon.ico?v=f6d031" type="image/x-icon">

    <!-- Bootstrap core CSS -->
    <link href="${basePath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${basePath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <!-- Pace -->
    <link href="${basePath}/resources/css/pace.css" rel="stylesheet">
    <!-- Endless -->
    <link href="${basePath}/resources/css/endless.min.css" rel="stylesheet">
    <link href="${basePath}/resources/css/endless-landing.min.css" rel="stylesheet">
    <!-- alertify -->
    <link href="${basePath}/resources/css/alertify/alertify.core.css" rel="stylesheet">
    <link href="${basePath}/resources/css/alertify/alertify.bootstrap.css" rel="stylesheet">

</head>

<!-- Jquery -->
<script src="${basePath}/resources/js/jquery-1.10.2.min.js"></script>
<script language="javascript">
    $.basePath = "${basePath}";
</script>
<body class="overflow-hidden">
<!-- Overlay Div -->
<div id="overlay" class="transparent"></div>
<div id="wrapper" class="preload">
    <header class="navbar navbar-fixed-top bg-white navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">
                    <span class="text-danger">网上党校</span>
                    在线考试
                </a>
                <a href="#" class="navbar-brand">
                    <span class="text-info">${(exam.name)!} 总分：${(exam.score)!}</span>
                </a>
            </div>
            <nav class="collapse navbar-collapse bs-navbar-collapse " role="navigation">
                <ul class="nav navbar-nav navbar-right ">
                    <li>
                        <a href="javascript:;" class="top-link">开始时间：${(exam.startTime?string('HH:mm:ss'))!}</a>
                    </li>
                    <li>
                        <a href="javascript:;" class="top-link"><span id="endTimeLabel"
                                                                      class="text-default">剩余时间：?:?</span></a>
                    </li>
                    <li>
                        <a href="javascript:;" class="top-link" id="submitExam"><span class="text-success">交卷</span></a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <div id="landing-content">
        <form>
        <#assign i=0><#-- 题种类计数 -->
        <#assign j=0><#-- 题目计数 -->
        <#assign numString=["一","二","三"]>
        <#assign abcString="ABCDEFGHIJKLMNOPQRSTUVWXYZ">
            <div id="portfolio" class="bg-light">
                <div class="section-header">
                    <hr class="left visible-lg">
                    <span>在线考试</span>
                    <hr class="right visible-lg">
                </div>
                <div class="container subContainer">
                    <div id="subjectList">
                        <#if (exam.singleChoiceList)??&&exam.singleChoiceList?size gt 0>
                            <div class="kindSub">${numString[i]}、单选题：</div>
                            <ul class="list-group subjectUl">
                                <#list exam.singleChoiceList as question>
                                    <li class="list-group-item">${question_index+1}. ${(question.question)!}</li>
                                </#list >
                            </ul>
                        </#if>
                        <#if (exam.multipleChoiceList)??&&exam.multipleChoiceList?size gt 0>
                            <div class="kindSub">${numString[i]}、多选题：</div>

                            <ul class="list-group subjectUl">
                                <#list exam.multipleChoiceList as question>
                                    <li class="list-group-item">${question_index+1}. ${(question.question)!}</li>
                                </#list >
                            </ul>

                        </#if>
                        <#if (exam.multipleChoiceList)??&&exam.multipleChoiceList?size gt 0>
                            <div class="kindSub">${numString[i]}、判断题：</div>

                            <ul class="list-group subjectUl">
                                <#list exam.tofList as question>
                                    <li class="list-group-item">${question_index+1}. ${(question.question)!}</li>
                                </#list >
                            </ul>

                        </#if>
                    </div>
                    <div class="panel panel-default table-responsive" id="subject">
                        <div class="panel-body  content-padding">
                            <div class="separator"></div>

                        <#if (exam.singleChoiceList)??&&exam.singleChoiceList?size gt 0>
                            <div class="col-xs-12 blockQuestion">
                                <div class="col-xs-2">${numString[i]}、单选题：</div>
                                <#list exam.singleChoiceList as question>
                                    <div class="col-xs-12 titleList">
                                        <div class="col-xs-12 myTitle">${question_index+1}. ${(question.question)!}</div>
                                        <div class="separator"></div>
                                        <div class="col-xs-12 optionList">
                                            <#list question.choiceModelList as choice>
                                                <div class="options">
                                                        <input name="${question.id}" type="radio"
                                                               value="${choice.value}" class="cRadio">
                                                        <span>${abcString[choice_index]}. ${choice.name}</span>
                                                </div>
                                            </#list>
                                        </div>
                                    </div>
                                </#list>
                            </div>
                        </#if>

                        <#if (exam.multipleChoiceList)??&&exam.multipleChoiceList?size gt 0>
                            <div class="col-xs-12 blockQuestion">
                                <div class="col-xs-2">${numString[i]}、多选题：</div>
                                <#list exam.multipleChoiceList as question>
                                    <div class="col-xs-12 titleList">
                                        <div class="col-xs-12">${question_index+1}. ${(question.question)!}</div>
                                        <div class="separator"></div>
                                        <div class="col-xs-12 optionList">
                                            <#list question.choiceModelList as choice>
                                               <#-- <div class="col-xs-6 col-md-3">
                                                    <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <label class="label-checkbox no-padding">
                                                                    <input name="${question.id}" type="checkbox"
                                                                           value="${choice.value}">
                                                                    <span class="custom-checkbox"></span>
                                                                </label>
                                                            </span>
                                                        <input
                                                               value="${abcString[choice_index]}: ${choice.name}"
                                                               readonly></input>
                                                    </div>
                                                </div>-->
                                                <div class="options">
                                                    <input name="${question.id}" type="checkbox"
                                                           value="${choice.value}" class="cRadio">
                                                    <span>${abcString[choice_index]}. ${choice.name}</span>
                                                </div>
                                            </#list>
                                        </div>
                                    </div>
                                </#list>
                            </div>
                        </#if>

                        <#if (exam.tofList)??&&exam.tofList?size gt 0>
                            <div class="col-xs-12 blockQuestion">
                                <div class="col-xs-2">${numString[i]}、判断题：</div>
                                <#list exam.tofList as question>
                                    <div class="col-xs-12 titleList">
                                        <div class="col-xs-12">${question_index+1}. ${(question.question)!}</div>
                                        <div class="separator"></div>
                                        <div class="col-xs-12 optionList">
                                            <#list question.choiceModelList as choice>
                                                <div class="options">
                                                    <input name="${question.id}" type="radio"
                                                           value="${choice.value}" class="cRadio">
                                                    <span>${abcString[choice_index]}. ${choice.name}</span>
                                                </div>
                                            </#list>
                                        </div>
                                    </div>
                                </#list>
                            </div>
                        </#if>
                            <input type="hidden" name="examId" value="${exam.id}">
                            <input type="hidden" name="unionId" value="${unionId}">
                        </div>
                        <div class="wrapBtn"><a class="prev btn btn-default" href="javascript:;">上一题</a> <a class="next btn btn-default" href="javascript:;">下一题</a></div>
                    </div>
                </div>
            </div>
        </form>

    </div>
    <!-- /landing-content -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-sm-3 padding-md">
                    <p class="font-lg">关于我们</p>
                    <p>
                        <small>长春大学 计算机学院 在线党校</small>
                    </p>
                </div><!-- /.col -->
                <div class="col-sm-3 padding-md">
                    <p class="font-lg">相关链接</p>
                    <ul class="list-unstyled useful-link">
                        <li>
                            <a href="#">
                                <small><i class="fa fa-chevron-right"></i> 长春大学</small>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <small><i class="fa fa-chevron-right"></i> 长春大学计算机科学技术学院</small>
                            </a>
                        </li>tooltip-
                        <li>
                            <a href="#">
                                <small><i class="fa fa-chevron-right"></i> 计算机学党建网站</small>
                            </a>
                        </li>
                    </ul>
                </div><!-- /.col -->
                <!-- <div class="col-sm-3 padding-md">
                    <p class="font-lg">联系我们</p>
                    <a href="#" class="social-connect tooltip-test facebook-hover pull-left m-right-xs" data-toggle="tooltip" data-original-title="Facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="social-connect tooltip-test twitter-hover pull-left m-right-xs" data-toggle="tooltip" data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="social-connect test google-plus-hover pull-left m-right-xs" data-toggle="tooltip" data-original-title="Google Plus"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="social-connect tooltip-test rss-hover pull-left m-right-xs" data-toggle="tooltip" data-original-title="Rss feed"><i class="fa fa-rss"></i></a>
                    <a href="#" class="social-connect tooltip-test tumblr-hover pull-left m-right-xs" data-toggle="tooltip" data-original-title="Tumblr"><i class="fa fa-tumblr"></i></a>
                    <a href="#" class="social-connect tooltip-test dribbble-hover pull-left m-right-xs" data-toggle="tooltip" data-original-title="Dribbble"><i class="fa fa-dribbble"></i></a>
                    <a href="#" class="social-connect tooltip-test linkedin-hover pull-left m-right-xs" data-toggle="tooltip" data-original-title="Linkedin"><i class="fa fa-linkedin"></i></a>
                    <a href="#" class="social-connect tooltip-test pinterest-hover pull-left" data-toggle="tooltip" data-original-title="Pinterest"><i class="fa fa-pinterest"></i></a>
                </div> -->
                <!-- /.col -->
                <div class="col-sm-3 padding-md">
                    <p class="font-lg">联系我们</p>
                    Email : endless.themes@gmail.com
                    <div class="seperator"></div>
                    <a class="btn btn-info" href="mailto:"><i class="fa fa-envelope"></i> 投诉建议</a>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div>
    </footer>
</div>
<!-- /wrapper -->

<a href="#" id="scroll-to-top" class="hidden-print">
    <i class="fa fa-chevron-up"></i>
</a>

<style>
    .blackHoll{
        width: 100%;
        height: 100%;
        background-color: #0a0c0e;
        z-index: 9999;
        position: fixed;
        top:0;
        left: 0;

    }
    .blackHoll:before{
        content:"请勿离开界面";
        font-size: 15em;
        color: #ffffff;
        font-weight:bold;
    }
</style>
<div id="blackHoll" class="blackHoll" style="display: none"></div>

<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- Bootstrap -->
<script src="${basePath}/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Waypoint -->
<script src='${basePath}/resources/js/waypoints.min.js'></script>
<!-- LocalScroll -->
<script src='${basePath}/resources/js/jquery.localscroll.min.js'></script>
<!-- ScrollTo -->
<script src='${basePath}/resources/js/jquery.scrollTo.min.js'></script>
<!-- Modernizr -->
<script src='${basePath}/resources/js/modernizr.min.js'></script>
<!-- Pace -->
<script src='${basePath}/resources/js/pace.min.js'></script>
<!-- Popup Overlay -->
<script src='${basePath}/resources/js/jquery.popupoverlay.min.js'></script>
<!-- Slimscroll -->
<script src='${basePath}/resources/js/jquery.slimscroll.min.js'></script>
<!-- Cookie -->
<script src='${basePath}/resources/js/jquery.cookie.min.js'></script>
<!-- Endless -->
<script src="${basePath}/resources/js/endless/endless.js"></script>
<!-- alertify -->
<script src="${basePath}/resources/js/alertify/alertify.min.js"></script>

<script>
    $(function () {
        $('.animated-element').waypoint(function () {

            $(this).removeClass('no-animation');

        }, {offset: '70%'});

        $('.nav').localScroll({duration: 800});
    });
</script>
<script src="${basePath}/resources/js/party/exam.js"></script>
<script>
    !function () {
        $(function () {
            var d = new Date("${exam.startTime?string('yyyy-MM-dd HH:mm:ss')}");
            var end = d.getTime() + ${exam.time}* 60 * 1000;
            var timer = setInterval(function () {
                var now = new Date();
                var your_time = end - now.getTime();

                var hour = parseInt(your_time / (1000 * 60 * 60));
                var min = parseInt((your_time % (1000 * 60 * 60) / (60 * 1000)));
                var sec = parseInt(your_time / 1000 % 60);

                var danger = false;
                var text = "剩余时间：";
                if (hour != 0) {
                    text += (hour + ":");
                }
                if (min == 0) {
                    if (hour == 0) {
                        text += "<span class='text-danger'>00:";
                    } else {
                        text += "00:";
                    }
                } else if (min < 10) {
                    text += (hour == 0 ? "<span class='text-danger'>" : "");
                    text += ("0" + min + ":");
                    danger = true;
                } else {
                    text += (min + ":");
                }
                if (danger) {
                    text += ((sec > 9 ? sec : "0" + sec) + "</span>");
                } else {
                    text += (sec > 9 ? sec : "0" + sec);
                }

                if (your_time <= 0) {
                    submitForm();
                }


                $("#endTimeLabel").html(text);
            }, 1000);

            $("#submitExam").on("click", function () {
                alertify.confirm("确认提交试卷，一经提交无法修改！", function (e) {
                    if (e) {
                        submitForm();
                    }
                });
            });
            //不太好
            $(document).on("mousemove",function(e){
                e=e? e:window.event;
                var x =e.screenX;
                var y =e.screenY;
                var winWidth = document.body.clientWidth;
                var winHeight = document.body.clientHeight;
                if((x<1||x>(winWidth-2))||(y<65||y>(winHeight-2))){
                    $("#blackHoll").show();
                }else{
                    $("#blackHoll").hide();
                }
            });
        });
        var submitCount = 0;
        var submitForm = function () {
            $.ajax({
                cache: true,
                type: "POST",
                url: "${basePath}/exam/end",
                data: $("form").serialize(),
                async: false,
                error: function (request) {
                    alertify.alert("错误：服务器异常！");
                    submitCount++;
                },
                success: function (data) {
                    submitCount++;
                    if (data.success) {
                        alertify.alert("考试时间结束，试卷已提交~", function () {
                            location.href = "${basePath}/main/index";
                        });
                    } else {
                        alertify.alert("错误:" + data.message, function () {
                            if (submitCount > 5) {
                                location.href = "${basePath}/main/index";
                            }
                        });
                    }
                }
            });
        };
    }();
</script>
<script>
    // 给选项加点击事件
    var aOptionList = document.getElementsByClassName('optionList');
    for(var j = 0; j < aOptionList.length; j ++ ) {
        var aOptions = aOptionList[j].getElementsByClassName('options');
        var aInput = aOptionList[j].getElementsByTagName('input');
        var sign = 0;
        if( aInput[0].type == 'radio' ) {
            sign = 1;
        }
        click(aOptions,aInput,sign);
    }
    function click(aOptions,aInput,sign){

        for( var i = 0; i < aOptions.length; i ++ ){
            aOptions[i].index = i;
            aOptions[i].onOff = false;
            aOptions[i].onclick = function(){
                if( sign == 1 ) {
                    for( var i = 0; i < aOptions.length; i ++ ) {
                        aOptions[i].style.borderColor = '#d4d4d4';
                        aOptions[i].onOff = false;
                    }
                }
                this.onOff = !this.onOff;
                if( this.onOff ) {
                    this.style.borderColor = '#58a';
                    aInput[this.index].checked = true;
                }else {
                    this.style.borderColor = '#d4d4d4';
                    aInput[this.index].checked = false;
                }

            }

        }
    }

    // 点击左侧列表
    // 获取左侧题目模块，最多三个
    var aSubUl = document.getElementsByClassName('subjectUl');
    var aBlockQuestion = document.getElementsByClassName('blockQuestion');

    setDefault();
    var oldLi = null;
    var newLi = null;

    for( var i = 0; i < aSubUl.length; i ++ ) {
        var aSubLi = aSubUl[i].getElementsByTagName('li');

        // 左侧li点击
        for( var j = 0; j < aSubLi.length; j ++ ) {
            aSubLi[j].index = j;
            aSubLi[j].num = i;
            aSubLi[j].onclick = function() {
                var aSubUl = document.getElementsByClassName('subjectUl');
                var arrLi = [];

                for( var i = 0; i < aSubUl.length; i ++ ) {
                    var aLi = aSubUl[i].getElementsByTagName('li');
                    for ( var j = 0; j < aLi.length; j ++ ) {
                        arrLi.push( aLi[j] );
                    }

                }
                for ( var i = 0; i < arrLi.length; i ++ ) {
                    arrLi[i].style.borderBottom = '';
                }
                this.style.borderBottom = '1px solid #58a';

                // 隐藏右侧所有块
                for( var i = 0; i < aBlockQuestion.length; i ++ ) {
                    aBlockQuestion[i].style.display = 'none';
                }
                aBlockQuestion[this.num].style.display = 'block';

                var aBlockQuestionList = aBlockQuestion[this.num].getElementsByClassName('titleList');
                // 显示当前题目
                for( var i = 0; i < aBlockQuestionList.length; i ++ ) {
                    aBlockQuestionList[i].style.display = 'none';
                }
                aBlockQuestionList[this.index].style.display = 'block';
            }
        }
    }


    function setDefault() {
        // 默认显示第一题
        var aQuestion = aBlockQuestion[0].getElementsByClassName('titleList');
        var aSubUl = document.getElementsByClassName('subjectUl');
        var arrLi = [];

        for( var i = 0; i < aSubUl.length; i ++ ) {
            var aLi = aSubUl[i].getElementsByTagName('li');
            for ( var j = 0; j < aLi.length; j ++ ) {
                arrLi.push( aLi[j] );
            }

        }
        arrLi[0].style.borderBottom = '1px solid #58a';

        for( var i = 0; i < aQuestion.length; i ++ ) {
            aQuestion[i].style.display = 'none';
        }
        aQuestion[0].style.display = 'block';
        //隐藏判断题和多选题
        for( var i = 1; i < aBlockQuestion.length; i ++ ) {
            aBlockQuestion[i].style.display = 'none';
        }
    }


    // 上一题 下一题 未完成
    var oPrev = document.getElementsByClassName('prev')[0];
    var oNext = document.getElementsByClassName('next')[0];
    // 获取显示的块和题目
    oNext.onclick = function(){
        getValue(1);
    }
    oPrev.onclick = function(){
        getValue(-1);
    }

    function getValue(index){
        var num = 0;
        var arrQuestion = document.getElementsByClassName('titleList');
        var aSubUl = document.getElementsByClassName('subjectUl');

        var arrLi = [];

        for( var i = 0; i < aSubUl.length; i ++ ) {
            var aLi = aSubUl[i].getElementsByTagName('li');
            for ( var j = 0; j < aLi.length; j ++ ) {
                arrLi.push( aLi[j] );
            }

        }
        var num = 0;
        for( var i = 0; i < aBlockQuestion.length; i ++ ) {

            if( aBlockQuestion[i].style.display != 'none' ) {


                var aList = aBlockQuestion[i].getElementsByClassName('titleList');
                var aLi = aSubUl[i].getElementsByTagName('li');
                var num = i;


                for( var j = 0; j < aList.length; j ++ ) {
                    if( aList[j].style.display != 'none' ) {

                        if ( ( j == 0 ) && ( index ===-1 ) ) {
                            if ( num === 0 ) {
                                oPrev.disabled = true;
                                return;
                            } else if ( num > 0 && num < aBlockQuestion.length ) {
                                for ( var k = 0; k < aBlockQuestion.length; k ++ ) {
                                    aBlockQuestion[k].style.display = 'none';
                                }
                                aBlockQuestion[num-1].style.display = 'block';

                                var aBlockQuestionList = aBlockQuestion[num - 1].getElementsByClassName('titleList');
                                // 显示当前题目
                                for( var i = 0; i < aBlockQuestionList.length; i ++ ) {
                                    aBlockQuestionList[i].style.display = 'none';
                                }
                                aBlockQuestionList[aBlockQuestionList.length-1].style.display = 'block';


                                for ( var l = 0; l < arrLi.length; l ++ ) {
                                    arrLi[l].style.borderBottom = '';
                                }
                                var aSubUl = document.getElementsByClassName('subjectUl');
                                var aLiLast = aSubUl[num-1].getElementsByTagName('li');
                                aLiLast[aLiLast.length-1].style.borderBottom = '1px solid #58a';
                            }


                        }

                        if ( (j == aList.length-1) && (index===1) ) {

                            if ( i < aBlockQuestion.length-1 ) {
                                for ( var k = 0; k < aBlockQuestion.length; k ++ ) {
                                    aBlockQuestion[k].style.display = 'none';
                                }
                                aBlockQuestion[i+1].style.display = 'block';

                                var aBlockQuestionList = aBlockQuestion[i + 1].getElementsByClassName('titleList');
                                // 显示当前题目
                                for( var i = 0; i < aBlockQuestionList.length; i ++ ) {
                                    aBlockQuestionList[i].style.display = 'none';
                                }
                                aBlockQuestionList[0].style.display = 'block';


                                for ( var l = 0; l < arrLi.length; l ++ ) {
                                    arrLi[l].style.borderBottom = '';
                                }
                                var aSubUl = document.getElementsByClassName('subjectUl');
                                var aLiNext = aSubUl[num+1].getElementsByTagName('li');
                                aLiNext[0].style.borderBottom = '1px solid #58a';

                            } else {
                                oPrev.disabled = true;
                            }

                            return;

                        }

                        aList[j].style.display = 'none';
                        aList[j + index].style.display = 'block';

                        for ( var l = 0; l < arrLi.length; l ++ ) {
                            arrLi[l].style.borderBottom = '';
                        }

                        aLi[j+index].style.borderBottom = '1px solid #58a';

                        return;
                    }
                }


            }
        }


    }



</script>
</body>
</html>
