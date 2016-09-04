<!-- Footer -->
<div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                {% set year = date(Date.now(), "YYYY")%}
                <p class="copyright text-muted small">Copyright &copy; {{ year }} {{ config.author }}.
                    All Rights Reserved.</p>
            </div>
            <div class="col-md-4">
                Powered by <a href="http://hexo.io">Hexo</a>, theme ported from open source Bootstrap
                theme <a href="https://github.com/frostming/hexo-theme-landing-page/">Landing Page</a>
                <iframe
                    style="margin-left: 2px; margin-bottom:-5px;"
                    frameborder="0" scrolling="0" width="91px" height="20px"
                    src="https://ghbtns.com/github-btn.html?user=frostming&repo=hexo-theme-landing-page&type=star&count=true" >
                </iframe>
            </div>
        </div>
    </div>
</div>
