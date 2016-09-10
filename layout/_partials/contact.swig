<section id="contact">
	<div class="banner">
		<div class="container">

			<div class="row">
				<div class="col-lg-6">
					<h2>Contact Me:</h2>
				</div>
				<div class="col-lg-6">
					<ul class="list-inline banner-social-buttons">
						{% for social in theme.social %}
            {% if social.title === 'zhihu' %}
              <li>
                <a href="{{ social.url }}" class="btn btn-default btn-lg">
                  <span style="font-size:18px;font-weight:700;">知</span>
                </a>
              </li>
            {% else %}
  						<li>
  							<a href="{{ social.url }}" class="btn btn-default btn-lg">
                  <i class="fa fa-{{ social.title }} fa-fw"></i>
                </a>
  						</li>
            {% endif %}
						{% endfor %}
					</ul>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
</section>
<!-- /.banner -->
