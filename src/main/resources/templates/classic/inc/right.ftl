<div class="panel panel-default widget">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-heartbeat"></i> 时 间</h3>
	</div>
	<div id="clock">
		<p class="date">{{date}}</p>
		<p class="time">{{time}}</p>
	</div>
</div>
<div class="panel panel-default widget">
	<div class="pb-carouselWarp carousel" id="right_carousel">
		<ul class="pb-carousel">
			<li class="pb-this"><img src="${base}/theme/classic/dist/images/carousel/5.jpg" alt="5" /></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/4.jpg" alt="4"/></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/3.jpg" alt="3"/></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/2.jpg" alt="2"/></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/1.jpg" alt="1"/></li>
		</ul>
		<ul class="pb-carousel-ind">
			<li class="pb-this"></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
		<button class="pb-arrow pb-arrow-prev"></button>
		<button class="pb-arrow pb-arrow-next" id="aa"></button>
	</div>
</div>
<div class="panel panel-default widget">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-rocket"></i> 应用</h3>
	</div>
	<div align="left">
		<ul>
			<li><a href="${base}/app/test.html">app01</a></li>
			<li><a href="${base}/app/test.html">app02</a></li>
			<li><a>app03</a></li>
		</ul>
	</div>
</div>
<div class="panel panel-default widget">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-line-chart"></i> 热门文章</h3>
	</div>
	<div class="panel-body">
		<@sidebar method="hottest_posts">
		<ul class="list">
			<#list results as row>
            <li>${row_index + 1}. <a href="${base}/post/${row.id}.html">${row.title}</a></li>
			</#list>
		</ul>
		</@sidebar>
	</div>
</div>

<div class="panel panel-default widget">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-newspaper-o"></i> 最新发布</h3>
	</div>
	<div class="panel-body">
		<@sidebar method="latest_posts">
			<ul class="list">
				<#list results as row>
					<li>${row_index + 1}. <a href="${base}/post/${row.id}.html">${row.title}</a></li>
				</#list>
			</ul>
		</@sidebar>
	</div>
</div>

<@controls name="comment">
<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-comments-o"></i> 最新评论</h3>
    </div>
    <div class="panel-body">
		<@sidebar method="latest_comments">
			<ul class="list">
				<#list results as row>
					<li><a href="${base}/post/${row.postId}">${row.content}</a></li>
				</#list>
			</ul>
		</@sidebar>
    </div>
</div>
</@controls>