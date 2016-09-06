{% if page.prev or page.next %}
  <nav class="pagination">
    {% if page.prev %}
      <a class="read-more" style="float: left" href={{ page.prev_link }}>Previous Page</a>
    {% endif %}
    {% if page.prev %}
      <a class="read-more" style="float: right" href={{ page.next_link }}>Next Page</a>
    {% endif %}
  </nav>
{% endif %}
