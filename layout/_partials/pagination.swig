{% if page.total > page.current %}
  <a class="btn btn-default btn-lg" style="float:right" href="{{ url_for('/page/') }}{{ page.current+1 }}">
    <span class="network-name">Next Page</span>
  </a>
{% endif %}
{% if page.current === 2 %}
  <a class="btn btn-default btn-lg" style="float:left" href="{{ url_for('/') }}">
    <span class="network-name">Previous Page</span>
  </a>
{% elseif page.current > 2 %}
  <a class="btn btn-default btn-lg" style="float:left" href="{{ url_for('/page/') }}{{ page.current-1 }}">
    <span class="network-name">Previous Page</span>
  </a>
{% endif %}
