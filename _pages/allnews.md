---
title: "新闻动态"
layout: textlay
excerpt: "东南大学计算机科学拔尖学生培养基地新闻动态。"
sitemap: false
permalink: /allnews.html
slug: allnews
---

# 新闻动态

{% for article in site.data.news %}
<p><b>{{ article.date }}</b><br>
<span>{{ article.headline }}</span></p>
{% endfor %}
