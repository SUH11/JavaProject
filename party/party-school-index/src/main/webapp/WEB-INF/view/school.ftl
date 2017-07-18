<#import "/master/blank.ftl" as master />


<@master.masterBlank>

    <@master.header ></@master.header>
<link href="${basePath}/resources/css/dx-slider.css" type="text/css" rel="stylesheet" />
<div id="cont_index" class="clear">
    <div class="left">
        <div class="lef">
            <ul class="but" >
                <li><a href="${basePath}/list/16">党校概况</a></li>
                <li><a href="${basePath}/list/17">入党导航</a></li>
                <li><a href="${basePath}/list/18">教学计划</a></li>
                <li><a href="${basePath}/list/19">学习天地</a></li>
            </ul>
            <div class="block1">

                <ul>
                    <#if banner?? && banner?size gt 0>
                        <#list banner as b>
                            <li><img class="img" src="${b.pic}" onclick="location.href='${b.url}'" /></li>
                        </#list>
                    </#if>
                </ul>

            </div>
        </div>
        <div class="block2">
            <div class="blo">
                <div class="tit2">
                    <div class="title">党校新闻</div>
                    <a href="${basePath}/list/14">
                        <img src="${basePath}/resources/img/more-1.gif" alt="" class="fr" />
                    </a>
                </div>
                <ul class="cont">
                    <#if dxxw?? && dxxw?size gt 0>
                        <#list dxxw as a>
                         <#if a.status == 0 || a.status == 1>
                            <li><a href="${basePath}/article/${a.articleId}"> ${a.title}</a><span>[${a.publishTime?string("yyyy-MM-dd")}]</span></li>
                         </#if>
                        </#list>
                    </#if>
                </ul>
            </div>
        </div>

        <div class="block2">
            <div class="blo">
                <div class="tit2">
                    <div class="title">通知公告</div>
                    <a href="${basePath}/list/14">
                        <img src="${basePath}/resources/img/more-1.gif" alt="更多" class="fr" />
                    </a>
                </div>
                <ul class="cont">
                    <#if tzgg?? && tzgg?size gt 0>
                        <#list tzgg as a>
                          <#if a.status == 0 || a.status == 1>
                            <li><a href="${basePath}/article/${a.articleId}"> ${a.title}</a><span>[${a.publishTime?string("yyyy-MM-dd")}]</span></li>
                          </#if>
                        </#list>
                    </#if>
                </ul>
            </div>
        </div>

    </div>
    <div class="right" id="rightDiv">
        <#--<div class="right_1">-->
            <#--<div class="tit3">-->
                <#--<img src="${basePath}/resources/img/xuexitiandi.gif" alt="学习天地" class="r_fl" />-->
                <#--<img src="${basePath}/resources/img/more1.gif" alt="更多" class="fr" />-->
            <#--</div>-->
            <#--<ul class="right_cont">-->
                <#--<li><a href="#this">网络课程</a></li>-->
                <#--<li><a href="#this">网络课程</a></li>-->
                <#--<li class="libg1"><a href="#this">网络课程</a></li>-->
            <#--</ul>-->
        <#--</div>-->

        <div class="right_1">
            <div class="tit3">
                <img src="${basePath}/resources/img/guanlixitong-1.gif" alt="系统登录" class="r_fl"/>
            </div>
            <ul class="right_cont">
                <li class="libg1"><a href="http://192.168.248.246:8080/party-school/main/login" target="_blank">系统登录</a></li>
            </ul>
        </div>
        <div class="right_2">
            <div class="tit4"><img src="${basePath}/resources/img/lianxiwomen-1.gif" alt="联系我们" /></div>
            <div class="phone">
                <div class="phone1"><img src="${basePath}/resources/img/phone.gif" alt="电话" /></div>
                <div class="num">
                    <span>电话传真：</span>
                    <p>0431-85250337</p>
                </div>
            </div>
            <p class="text3">
                通信地址:吉林省长春市卫星路6543号
            </p>
        </div>
        <div class="right_1">
            <div class="tit3">
                <img src="${basePath}/resources/img/youqinglianjie-1.gif" alt="友情链接" class="r_fl" />
                <img src="${basePath}/resources/img/more-1.gif" alt="更多" class="fr" />
            </div>
            <ul class="right_cont">
                <li><a href="http://news.12371.cn/dzybmbdj/zzb/ " target="_blank">中共中央组织部</a></li>
                <li><a href="http://www.jlzzgz.gov.cn/" target="_blank">吉林组织工作网</a></li>
                <li><a href="http://www.ccdj.gov.cn/" target="_blank">长春党建网</a></li>
                <li><a href="http://cdxcb.ccu.edu.cn/gd.asp?id=40"  target="_blank">长春大学党委宣传部网站</a></li>
            </ul>
        </div>
    </div>

</div>

    <@master.footer></@master.footer>

</@master.masterBlank>
<script>
    $(function() {
        $('.block1').unslider({
            autoplay: true,             //Automatic
//            animation: 'vertical',      //vertical or horizontal
//            animation: 'fade',
//            infinite: true,
            speed: 500,               //  The speed to animate each slide (in milliseconds)
            delay: 3000,              //  The delay between slide animations (in milliseconds)
            complete: function() {},  //  A function that gets called after every slide animation
//            arrows: true,
            keys: true,               //  Enable keyboard (left, right) arrow shortcuts
            dots: true,               //  Display dot navigation
            fluid: true              //  Support responsive design. May break non-responsive designs
        });
    });
</script>