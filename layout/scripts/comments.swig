{% if theme.duoshuo_shortname %}
<script type="text/javascript">
var duoshuoQuery = {short_name:"frostming"};
	(function() {
		var ds = document.createElement('script');
		ds.type = 'text/javascript';ds.async = true;
		ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
		ds.charset = 'UTF-8';
		(document.getElementsByTagName('head')[0]
		 || document.getElementsByTagName('body')[0]).appendChild(ds);
	})();
</script>
{% elseif theme.disqus_shortname %}
<script type="text/javascript">
  var disqus_shortname = '{{theme.disqus_shortname}}';
  var disqus_identifier = '{{ page.path }}';
  var disqus_title = '{{ page.title }}';
  var disqus_url = '{{ page.permalink }}';

  function run_disqus_script(disqus_script){
	var dsq = document.createElement('script');
	dsq.type = 'text/javascript';
	dsq.async = true;
	dsq.src = '//' + disqus_shortname + '.disqus.com/' + disqus_script;
	(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  }

  run_disqus_script('count.js');
  {% if page.comments %}
	run_disqus_script('embed.js');
  {% endif %}
</script>
{% endif %}
