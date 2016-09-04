{% extends 'layout.swig' %}
{% block face %}
<section id="home">
<!-- Header -->
	<div class="intro-header">

		<div class="container">

			<div class="row">
				<div class="col-lg-12">
					<div class="intro-message">
						<h1>{{ page.title }}</h1>
						<h3>{{ page.subTitle }}</h3>
						<hr class="intro-divider">
						<ul class="list-inline intro-social-buttons">
							{% for social in site.social %}
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
{% for post in site.posts reversed %}
  {% capture thecycle %}{% cycle 'odd', 'even' %}{% endcapture %}
    {% if thecycle == 'odd' %}
    <div class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">{{ post.title }}</h2>
                    <div class="lead">{{ post.content }}</div>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="img/services/{{ post.img }}" alt="">
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
                    <div class="lead">
                    {% if post.excerpt %}
                        {{ post.excerpt }}
                    {% else %}
                        {% set content = post.content | striptags %}
                        {{ content.substring(0, 150) }}
                    {% if content.length > 150 %}...{% endif %}
                    {% endif %}
                    </div>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                  <img class="img-responsive" src="{{ post.img }}" alt="">
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
