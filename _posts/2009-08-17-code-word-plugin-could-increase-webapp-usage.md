---
layout: post
title: "Code-word plugin could increase webapp usage"
date: 2009-08-17 15:20:58
slug: code-word-plugin-could-increase-webapp-usage
permalink: /code-word-plugin-could-increase-webapp-usage/
categories:
  - orphan-ideas
tags:
  - orphan-ideas
  - productivity
  - tips
excerpt: "I just got this cross-selling email from Basecamp today. I was thinking about it in the context of providing great outsourced workflow management in a package that is easyto use because it’s contro..."
---

<p>I just got this <a href="http://37assets.s3.amazonaws.com/newsletters/basecamp/2009-08-17.html">cross-selling email</a> from <a href="https://basecamp.com/">Basecamp</a> today. I was thinking about it in the context of providing great outsourced workflow management in a package that is easyto use because it&#8217;s controlled and relatively narrow: you can customize it a bit but you can&#8217;t really build it out or add features and you certainly can&#8217;t deploy it on your own server.</p>
<p>This model, of course, works for most people. However, there are organizations where privacy and security are more important for any number of reasons, from client promises to competitive pressure to regulatory requirements. These groups can not easily use webapps like this because the security and data privacy issues are fuzzy at best, in the absence of particularized licensing agreements, which is pretty much antithetical to the concept of webapps! (Perhaps this post will uncover some completely specialized services that are built to solve these problems, like garbage companies that agree to keep your garbage private, in part so that you have an expectation of privacy and the police can&#8217;t legally go through it without a warrant.)</p>
<p>One way to resolve the dilemma, in a way that would work for someone using a single computer to access the webapp, would be a plugin, perhaps using something like Gears to maintain some level of persistence, that encodes certain of your data that you enter into the webapp as a layer in-between your keyboard/browser and the http packets going back and forth.</p>
<p>Aside: I do specifically mean encoding here, substituting a whole word or sign (like &#8220;ketchup&#8221;) for the plaintext (like &#8220;Rick Colosimo&#8221;). This practice would allow you to not worry about the security at the webapp, or even of the traffic after it leaves your browser (both things hard to control) in favor of having to secure your laptop (maybe not easy to do but certainly easier to control).</p>
<p>Example: I type in, on my Basecamp page, something like &#8220;Buy 1000 shares Illumina for Rick Colosimo.&#8221; The plugin turns that into &#8220;buy rabbit shares of denver for fox.&#8221; That is what gets sent to the webapp and what it stores. Anyone else accessing the data, either through the servers directly or via the web, gets my encoded message. Using the plugin, though, I get back my correct message and should never, in fact, even see the coded version. Just like on-the-fly translation, I never see the other words. But this doesn&#8217;t require AI or huge amounts of processing power because the code structure (vs encryption) is a relatively static set of substitutions.</p>
<p>So now I can keep, for example, student records from my son&#8217;s school on a webapp, easily accessible by parents, while not worrying about whether I&#8217;m violating FERPA or HIPAA (or even whether I <em>have</em> to comply!).</p>
<p>Sure, this solution in the way I&#8217;ve described it doesn&#8217;t replace a fully secure, private, webapp. But it does so better than the non-secure, non-private webapp does today! Could it be extended, or tweaked to allow for online access to code cheatsheets? Sure. It might be very easy to include the code words within a series of obfuscated plaintext or html files, or even inside a photo on a website using steganography to protect it.</p>
<p>Please share your tips for increasing webapp privacy &amp; security in the comments.</p>

