---
layout: post
title: "Someone knows how to do a DB lookup on a web form"
date: 2012-09-01 15:11:14
slug: someone-knows-how-to-do-a-db-lookup-on-a-web-form
permalink: /someone-knows-how-to-do-a-db-lookup-on-a-web-form/
categories:
  - soapbox-2
tags:
  []
excerpt: "Congratulations go to sittercity.com today for web form usability. I’ve been filling out a lot of forms lately, and the ones that annoy me are those that seek city, state, and zip. Maybe they haven..."
---

<p>Congratulations go to <a href="https://www.sittercity.com/">sittercity.com</a> today for web form usability. I&#8217;ve been filling out a lot of forms lately, and the ones that annoy me are those that seek city, state, and zip. Maybe they haven&#8217;t learned that zip codes are highly correlated with specific locations, like the towns we live and work in. For two weeks (longer!) I&#8217;ve been wondering why no one has just implemented a quick lookup of city and state against the zip code table (or, less desirable, the zip code lookup against the address table &#8212; but I don&#8217;t know if the USPS provides an API for that).</p>
<p>Today, though, <a href="https://www.sittercity.com/">Sittercity</a> made me smile after I watched the magic happen: I put in my zip code and &#8212; Voila! &#8212; it automagically figured out my town and state. Good for them!</p>
<p>Okay, coders, why would you NOT do this? Error correction? That would be believable if I&#8217;d <em>ever</em> received an error correction warning: I assume my typos are not a null set.</p>
<p>(And speaking of error correction: if you&#8217;re going to require some password rules, how about telling the user first, maybe right next to the field? Not everyone will think that your job application page requires the same high security that you do.)</p>

