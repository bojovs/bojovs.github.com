# coding: utf-8

namespace :categories do
  task :generate do
    # https://gist.github.com/143571
    puts 'Generating categories...'
    require 'rubygems'
    require 'jekyll'
    include Jekyll::Filters

    options = Jekyll.configuration({})
    site = Jekyll::Site.new(options)
    site.read_posts('')

    html =<<-HTML
---
layout: base
title: カテゴリ
---

<h1>カテゴリ</h1>

    HTML

    site.categories.sort.each do |category, posts|
      html << <<-HTML
      <h2 id="#{category}">#{category}</h2>
      HTML

      html << '<ul class="posts">'
      posts.each do |post|
        post_data = post.to_liquid
        html << <<-HTML
          <li>
            <span class="datetime">
              #{post.date.strftime('%Y/%m/%d')}
            </span>
            <div class="title">
              <a href="#{post.url}">#{post_data['title']}</a>
            </div>
          </li>
        HTML
      end
      html << '</ul>'
    end

    File.open('categories.html', 'w+') do |file|
      file.puts html
    end

    puts 'Done.'
  end
end
