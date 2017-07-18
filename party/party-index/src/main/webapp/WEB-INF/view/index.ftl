<#import "/master/blank.ftl" as master />


<@master.masterBlank title="党建首页" >

    <@master.header list=list></@master.header>
<link href="${basePath}/resources/css/dj-slider.css" type="text/css" rel="stylesheet" />

<div id="contents" class="clear">
        <div class="left" id="leftDiv">
            <div class="left2">
                <div class="tit">
                    <img src="${basePath}/resources/img/dj/titbg1.gif" alt="" /><span>先进典型</span>
                    <a href="${basePath}/list/12"><img class="flr" src="${basePath}/resources/img/dj/gengduo.gif" alt="" /></a>
                </div>
                <ul class="cot">
                    <#if xjdx?? && xjdx?size gt 0>
                        <#list xjdx as a>
                           <#if a.status == 0 || a.status == 1>
                            <li><a href="${basePath}/article/${a.articleId}">${a.title}</a></li>
                           </#if>
                        </#list>
                    </#if>
                </ul>

            </div>
            <div class="left2">
                <div class="tit">
                    <img src="${basePath}/resources/img/dj/titbg1.gif" alt="" /><span>专题教育</span>
                    <a href="${basePath}/list/10"><img class="flr" src="${basePath}/resources/img/dj/gengduo.gif" alt="" /></a>
                </div>
                <ul class="cot">
                    <#if ztjy?? && ztjy?size gt 0>
                        <#list ztjy as a>
                            <#if a.status == 0 || a.status == 1>
                                <li><a href="${basePath}/article/${a.articleId}">${a.title}</a></li>
                            </#if>
                        </#list>
                    </#if>
                </ul>

            </div>
        </div>
        <div class="center" id="centerDiv">
            <div class="top">
                <div class="tit5">
                    <img class="ml9" src="${basePath}/resources/img/dj/tit5-1.gif" alt="" />
                    <a href="${basePath}/listDjBanner"><img class="fr" src="${basePath}/resources/img/dj/gengduo.gif" alt="" /></a>
                </div>
                <div class="con">
                    <div class="unslider">
                                    <ul>
                                        <#if banner?? && banner?size gt 0>
                                            <#list banner as b>
                                                <li>
                                                    <a href="${b.url}"><img src="${b.pic}"></a>
                                                </li>
                                            </#list>
                                        </#if>
                                    </ul>
                            <div class="banner-content" id="bannerTest">
                                <span class="title" title="${oneBanner.name!}">
                                    <#if oneBanner.name?? && oneBanner.name?length gt 14>
                                          ${oneBanner.name?substring(0, 14)}...
                                        <#else>
                                            ${oneBanner.name!}
                                    </#if>
                                </span>
                                <p>
                                    <#if oneBanner.description?? && oneBanner.description?length gt 180>
                                         ${oneBanner.description?substring(0, 180)}...
                                        <#else>
                                        ${oneBanner.description!}
                                    </#if>
                                    <a href="${oneBanner.url!}"><span>【详细】</span></a>
                                </p>
                            </div>
                    </div>
                </div>
            </div>
            <div class="bot">
                <div class="tit6">
                    <img class="ml9" src="${basePath}/resources/img/dj/tit6-1.gif" alt="" />
                    <a href="${basePath}/list/11"><img class="fr" src="${basePath}/resources/img/dj/gengduo.gif" alt="" /></a>
                </div>
                <ul class="cont">
                    <#if djxx?? && djxx?size gt 0>
                        <#list djxx as a>
                            <#if a.status == 0 || a.status == 1>
                            <li><a href="${basePath}/article/${a.articleId}">${a.title}</a><span>${a.publishTime?string("yyyy-MM-dd")}</span></li>
                            </#if>
                        </#list>
                    </#if>
                </ul>
            </div>
        </div>
        <div id="rightDiv" class="left" >
            <div class="left2">
                <div class="tit">
                    <img src="${basePath}/resources/img/dj/titbg1.gif" alt="" /><span>网上党校</span>
                    <a href="#this"><img class="flr" src="${basePath}/resources/img/dj/gengduo.gif" alt="" /></a>
                </div>
                <div class="entry">
                    <a  href="http://192.168.248.246:8080/party-school/main/login" target="_blank" title="网上党校入口">
                        <img src="${basePath}/resources/img/dj/kaoshiimg.gif" width="100" /><br/>
                        网上党校入口
                    </a>
                </div>

            </div>
            <div class="left2">
                <div class="tit">
                    <img src="${basePath}/resources/img/dj/titbg1.gif" alt="" /><span>常用链接</span>
                    <a href="#this"><img class="flr" src="${basePath}/resources/img/dj/gengduo.gif" alt="" /></a>
                </div>
                <ol class="cot">
                    <li><a href="http://www.cpc71.org.cn/" target="_blank">党建先锋网</a></li>
                    <li><a href="http://dwlm.12371.cn/" target="_blank">全国党建网站联盟</a></li>
                    <li><a href="http://www.dangjian.cn/" target="_blank">中宣部主管全国性党建网站</a></li>
                    <li><a href="http://cpc.people.com.cn/yun/" target="_blank">全国党建云平台</a></li>
                    <li><a href="http://news.12371.cn/dzybmbdj/zzb/ " target="_blank">中共中央组织部</a></li>
                    <li><a href="http://www.jlzzgz.gov.cn/" target="_blank">吉林组织工作网</a></li>
                    <li><a href="http://www.jljgdj.org/" target="_blank">吉林机关党建</a></li>
                    <li><a href="http://www.ccdj.gov.cn/" target="_blank">长春党建网</a></li>
                    <li><a href="http://cdxcb.ccu.edu.cn/gd.asp?id=40"  target="_blank">长春大学党委宣传部网站</a></li>
                </ol>

            </div>
        </div>

    </div>

    <@master.footer></@master.footer>

</@master.masterBlank>
<script>
    $(function() {
        $('.unslider').unslider({
            autoplay: true,             //Automatic
            animation: 'vertical',      //vertical or horizontal
//            animation: 'fade',
            infinite: true,
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
