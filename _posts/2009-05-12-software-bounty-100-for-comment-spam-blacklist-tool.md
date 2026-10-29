---
layout: post
title: "Software bounty – $100 for comment-spam blacklist tool"
date: 2009-05-12 11:37:26
slug: software-bounty-100-for-comment-spam-blacklist-tool
permalink: /software-bounty-100-for-comment-spam-blacklist-tool/
categories:
  - uncategorized
tags:
  - add-new-tag
  - blogging
  - productivity
  - software-bounty
excerpt: "Over on Triiibes, there is a group for wordpress users; the population seems to trend pretty heavily to blogging types, so it’s pretty lively and there’s lots of direct experience with issues. Some..."
---

<p>Over on <a href="http://triiibes.ning.com/main/authorization/signIn?target=http%3A%2F%2Ftriiibes.ning.com%2F">Triiibes</a>, there is a <a href="http://triiibes.ning.com/main/authorization/signIn?target=http%3A%2F%2Ftriiibes.ning.com%2Fgroup%2Fwordpressuserstriiibe">group</a> for wordpress users; the population seems to trend pretty heavily to blogging types, so it&#8217;s pretty lively and there&#8217;s lots of direct experience with issues.</p>
<p>Someone recently asked about dealing with comment spam in a way that goes beyond the super-awesome <a href="https://akismet.com/">akismet</a> plugin for <a href="https://wordpress.org/">WordPress</a>, which has been 100% effective (no Type I  or Type II errors, at all, across any of my blogs) at identifying comment spam. That&#8217;s performance.</p>
<p>In any event, I remembered I&#8217;d read an article that talked about modifying .htaccess to block specific IPs.</p>
<p><a href="http://www.netondas.com/">Jay Tillery</a>, a designer and WP guru, reminded me that WP 2.7 has a nice big field for entering IP addresses to be blocked. It&#8217;s on the Settings:Discussion page in your admin screens.</p>
<p>But, unless you&#8217;re working your blog all day (in which case you should probably be writing rather than configuring), who wants to cut-and-paste IP addresses from Akismet? I know that I don&#8217;t; it&#8217;s just an extra step.</p>
<p>So, here&#8217;s the latest <a href="http://www.thoughtstorm.com/tag/software-bounty/">software</a> <a href="http://rickcolosimo.com/tag/software-bounty/">bounty</a> project:</p>
<div><span style="font-size: small;">Wanted: a WP plugin, compliant with at least WP 2.7, that adds per-item checkboxes in the akismet comment spam review page and, upon the action in the page, such as deleting spam or a separate &#8220;blacklist&#8221; button, adds the IP addresses to the comment blacklist field in the Settings:Discussion options page.</span></div>
<div><span style="font-size: small;"><br />
</span><span style="font-size: small;">Feature: allows for a global &#8220;blacklist all&#8221; option for individual IPs.Reference: When using the Akismet plugin, the IP address for a spam comment is available and even a sortable field. </span></div>
<p><span style="font-size: small;">Reward: $100 for first working version. Submissions to rick@thoughtstorm.com. I will test the plugin myself and then have a colleague confirm the solution is acceptable. All submissions will be recognized here.</span></p>
<p><span style="font-size: small;">Also, the best version of the plugin (which may not be the first) will be sponsored by us to develop and market a &#8220;pro&#8221; version of the plugin that includes advanced features such as integration with other external blacklists/whitelists, blacklist sharing features, configurable IP block address blacklist rules, or others.</span></p>

