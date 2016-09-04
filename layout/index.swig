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

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <a href="{{ post.path }}"><h2 class="section-heading">{{ post.title }}</h2></a>
					<p class="post-meta">Posted by {{ post.author || config.author }} on {{ post.date.format(config.date_format) }}</p>
                    <div class="lead">
					{% if post.excerpt %}
                        {{ post.excerpt }}
                    {% else %}
                        {% set content = post.content | striptags %}
                        {{ content.substring(0, 150) }}
                    {% if content.length > 150 %}...<br><a href="{{ post.path }}">Read More</a>{% endif %}
                    {% endif %}
					</div>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
					{% if post.img %}
                    <img class="img-responsive" src="{{ post.img }}" alt="">
					{% endif %}
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->
	{% else %}
	<div class="content-section-b">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
					<hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <a href="{{ post.path }}"><h2 class="section-heading">{{ post.title }}</h2></a>
					<p class="post-meta">Posted by {{ post.author || config.author }} on {{ post.date.format(config.date_format) }}</p>
                    <div class="lead">
					{% if post.excerpt %}
                        {{ post.excerpt }}
                    {% else %}
                        {% set content = post.content | striptags %}
                        {{ content.substring(0, 150) }}
                    {% if content.length > 150 %}...<br><a href="{{ post.path }}">Read More</a>{% endif %}
                    {% endif %}
				</div>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
					{% if post.img %}
                    <img class="img-responsive" src="{{ post.img }}" alt="">
					{% endif %}
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-b -->
    {% endif %}

{% endfor %}
</section>
{% endblock %}
