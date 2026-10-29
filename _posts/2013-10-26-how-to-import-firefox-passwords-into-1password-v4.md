---
layout: post
title: "How to import firefox passwords into 1Password v4"
date: 2013-10-26 10:31:20
slug: how-to-import-firefox-passwords-into-1password-v4
permalink: /how-to-import-firefox-passwords-into-1password-v4/
categories:
  - reviews
tags:
  - tips
  - walkthrough
excerpt: "I recently purchased 1Password v4. I thought, reading the reviews and the FAQ, that it would import the 548 password combinations I evidently had stored in Firefox. NOT TRUE. The product was shippe..."
---

<p>I recently purchased 1Password v4. I thought, reading the reviews and the FAQ, that it would import the 548 password combinations I evidently had stored in Firefox.</p>
<p>NOT TRUE.</p>
<p>The product was shipped with only the ability to import its own format (thanks for nothing) and CSV files.</p>
<p>Checking, opening, and retyping 548 sets of URL, username, and password sounded like exactly Zero Fun.</p>
<p>Here&#8217;s the workaround that 1Password should have kindly shared with new users, modified slightly from my <a href="https://discussions.agilebits.com/discussion/comment/90387#Comment_90387">post</a> on their forum.</p>
<ol>
<li>
<p>Here&#8217;s an extension for Firefox that (in Firefox 24) exported my 548 saved passwords to a .csv file: <a href="https://addons.mozilla.org/en-US/firefox/addon/password-exporter/">https://addons.mozilla.org/en-US/firefox/addon/password-exporter/</a> The extension tells you how may exported items there are. This is a quick check to see if there&#8217;s a major problem in your process (but keep in mind it won&#8217;t confirm that they&#8217;re properly converted at each step).</p>
</li>
<li>
<p>Export was very quick.</p>
</li>
<li>
<p>USE 1Pv3 to import. Use the <a href="https://help.agilebits.com/1Password3/legacy_versions.html">legacy download page</a>. I used <a href="https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.21.zip">v3.8.2.1</a> for Lion with no ill effects on Mountain Lion.</p>
</li>
<li>
<p>File/Import. Select the csv file. (In 1Pv4, this must have the .csv extension, so mine now did from an earlier failed attempt.) You will have to adjust the fields manually to ensure they match and select &#8220;Login&#8221; as type. 548 logins imported in my case, which matches </p>
</li>
<li>
<p>Export all to 1PIF (just in case) to desktop. Not encrypted &#8211; remember to delete later.</p>
</li>
<li>
<p>Close 1Pv3.</p>
</li>
<li>
<p>Reinstalled 1Pv4 (from App Store, in my case). It remembered my earlier master password.</p>
</li>
<li>
<p>Import the 1PIF folder.</p>
</li>
<li>
<p>548 items imported. </p>
</li>
<li>
<p>I tested a few items to see if they worked, which is also about learning the application. It all looks good to my newbie eye.</p>
</li>
</ol>

