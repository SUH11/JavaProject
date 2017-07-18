<#import "/master/blank.ftl" as master />

<@master.masterBlank title="党校 - 内容" >

    <@master.header ></@master.header>
<div id="cont_index">
    <div class="left">
        <div class="lef" >
            <ul class="but"  >
                <li><a href="${basePath}/list/16">党校概况</a></li>
                <li><a href="${basePath}/list/17">入党导航</a></li>
                <li><a href="${basePath}/list/18">教学计划</a></li>
                <li><a href="${basePath}/list/19">学习天地</a></li>
            </ul>
        </div>
    </div>
    <div id="getDiv">
        <a href="${basePath}" id="getIndex">返回首页</a>
        <a href="javascript:history.back()" id="getBack">后退</a>
        <a href="javascript:history.forward()">前进</a>
    </div>
</div>
<br/><br/>
<div id="cont_tongzhigonggao" class="clear">
    <div class="t_conts clear" >

        <div class="t_left">

         <#--   <div class="t_tit">${channel!}</div>
            <ul class="t_list">
                <#if left?? && left?size gt 0>
                    <#list left as c>
                        <li><a href="${basePath}/list/${c.channelId}">${c.name}</a></li>
                    </#list>
                </#if>
            </ul>
        </div>-->
        <div class="t_right">
            <div class="t_cont_r">
                <div class="title">
                    <div class="t">${channel!}</div>
                </div>
                <div class="captial">${article.title}</div>
                <div class="time">${article.publishTime?string('yyyy-MM-dd')}</div>

                <#if article.summary?? && article.summary?length gt 0>
                    <div class="summary">
                        <p>摘要：</p>
                        <p>${(article.summary)!}</p>
                    </div>
                </#if>

                <div class="text">
                    ${(article.content)!}
                </div>
            </div>
        </div>
    </div>
</div>

    <@master.footer></@master.footer>

</@master.masterBlank>
