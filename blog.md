---
layout: default
---
# Blog de Alain
Un lugar básico para mis pensamientos, tutoriales y algunas otras cosas.

{% assign posts = site.posts | sort: "date" | sort: "updated" | reverse %}

{% for post in posts %}
  <div class="post-link-wrapper">
    <a href="{{ post.url | relative_url }}" class="post-link">{{ post.title }}</a>
    <div class="post-meta">
      {% if site.plugins contains "jekyll/tagging" %}
      <div class="post-tags">
          {% for tag in post.tags %}
          <a class="tag" href="/tag/{{ tag }}/">{{ tag }}</a>
          {% endfor %}
      </div>
      {% endif %}
      {% if site.date_format %}
        {{ post.date | date: site.date_format }}
      {% else %}
        {{ post.date | date: "%b %-d, %Y" }}
      {% endif %}
      {% if site.show_excerpts == true %}
        <div class="post-excerpt">
          {{ post.content | strip_html | truncatewords: 50 }}
        </div>
      {% endif %}
    </div>
  </div>
{% endfor %}