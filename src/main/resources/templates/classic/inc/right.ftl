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
	<div class="pb-carouselWarp carouseldemo">
		<ul class="pb-carousel">
			<li class="pb-this"><img src="${base}/theme/classic/dist/images/carousel/5.jpg" alt="" /></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/5.jpg" alt=""/></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/3.jpg" alt=""/></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/2.jpg" alt=""/></li>
			<li><img src="${base}/theme/classic/dist/images/carousel/1.jpg" alt=""/></li>
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