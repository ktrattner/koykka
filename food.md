---
layout: default
title: Food
permalink: /food/
---

# Food

<div class="tile-grid">
  {% for i in (1..12) %}
  <a class="tile" href="{{ '/food/photo-' | append: i | append: '/' | relative_url }}">
    <div class="thumb" style="background-image: url('{{ '/assets/images/food/photo-' | append: i | append: '-thumb.jpg' | relative_url }}');"></div>
    <span class="title">Photo {{ i }}</span>
  </a>
  {% endfor %}
</div>