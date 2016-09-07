{% extends '_layout.swig' %}

{% block face %}
<section id="home">
<!-- Header -->
	<div class="intro-header">

		<div class="container">

			<div class="row">
				<div class="col-lg-12">
					<div class="intro-message">
						<h1>{{ config.title }}</h1>
						<h3>{{ config.subtitle }}</h3>
						<hr class="intro-divider">
						<ul class="list-inline intro-social-buttons">
							{% for social in theme.social %}
							<li>
								<a href="{{ social.url }}" class="btn btn-default btn-lg"><i class="fa fa-{{ social.title }} fa-fw"></i> <span class="network-name">{{ social.title }}</span></a>
							</li>
							{% endfor %}
						</ul>
					</div>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.intro-header -->
</section>
{% endblock %}

{% block content %}
<section id="services">
<!-- Page Content -->
{% set flag=false %}
{% for post in page.posts %}
	{% set flag=not flag %}
	{% if flag %}
    <div class="content-section-a">
	{% else %}
		<div class="content-section-b">
	{% endif %}
        <div class="container">

            <div class="row">
                <div class="col-lg-6 col-sm-6">
										<p class="post-meta">{{ post.date|date('F jS, Y') }}</p>
										<hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <a class="section-heading" href="{{ post.path }}"><h2>{{ post.title }}</h2></a>
										<div class="lead">
											{% if post.excerpt %}
                        {{ post.excerpt }}
                    	{% else %}
                        {% set content = post.content | striptags %}
                        {{ content.substring(0, 200) }}
	                    {% if content.length > 200 %}...{% endif %}
	                    {% endif %}
										</div>
										{% if content.length > 200 || post.excerpt %}
											<a class="read-more" href="{{ post.path }}">Read More</a>
										{% endif %}
                </div>
                <div class="col-lg-5 col-lg-push-1 col-sm-6">
								{% if post.img %}
                  <img class="img-responsive" src="{{ url_for(post.img) }}" alt="">
								{% endif %}
                </div>
            </div>

        </div>
        <!-- /.container -->
    </div>
{% endfor %}
<div class="container pagination">
  <div class="row">
    {% include '_partials/pagination.swig' %}
  </div>
</div>
</section>
{% endblock %}
