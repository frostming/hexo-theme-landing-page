<!DOCTYPE html>
<html>
    {% include '_partials/head.swig' %}
    <body>
        {% include '_partials/header.swig' %}
        {% block face %}{% endblock %}
        <section id="about" class="container content-section text-center">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                {% block content %}{% endblock %}
                </div>
            </div>
        </section>
        {% include '_partials/footer.swig' %}
        {% include 'scripts/js.swig' %}
    </body>
</html>
