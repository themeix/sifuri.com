---
layout: post
title: "Software Bounty – product classifier tool"
date: 2009-01-19 19:28:18
slug: software-bounty-product-classifier-tool
permalink: /software-bounty-product-classifier-tool/
categories:
  - uncategorized
tags:
  - orphan-ideas
  - software-bounty
excerpt: "We had a previous investment in an online consumer products retailer. One issue that we were facing in rebuilding (unfortunately) the site’s backend from the bottom-up was re-branding the product l..."
---

<p>We had a previous investment in an online consumer products retailer. One issue that we were facing in rebuilding (unfortunately) the site&#8217;s backend from the bottom-up was re-branding the product line into several market segments that we were going to market through distinct URLs, designs, and strategies. My goal was to do all of that using a single back-end database (since products would fall into more than one segment) and ecommerce platform (since everything would be ordered, stored, and shipped from the same location). We never quite got to the point of finding the right solution; perhaps foolishly, I expected that this was not the first incarnation of the problem and that some boxed solution had all these capabilities.</p>
<p>Under the circumstances, the bounty is $50 for a pointer to a quality program that accomplishes these tasks and a TBD bounty if the response is an offer to build/license the package.</p>
<p>Part I of the project, which  I won&#8217;t really define in detail, is a combination web front-end and back-end [ERP/ecommerce] software package that meets the general description above. We would like the system to be easily extensible to running additional unrelated sites (i.e., we really want a <em>platform</em> rather than just an <em>application.</em> My current guess on how this might work is that it will be a mySQL-compatible database &#8220;layer&#8221; that will update with the ERP/ecommerce layers every 10 or 15 minutes, and all the website generation will come out of the database layer.</p>
<p>Part II of the project is a tool that makes it easier to classify a variety of products according to various categories relevant to the database.</p>
<p>The interaction results in classification and organization of products in the inventory. The products need to be classified under different dimensions with option of additional filters/labels/tags. To do this, the system needs to allow a customer sales representative (CSR) to set the classification for the products, preferably in a visual, checkbox/radio button format, enabling matching of descriptions to photo images of the product. After a product is classified the page can display the next product to be classified. The system will also allow the CSR to reclassify the product at any time.</p>
<p>To ease the process, it would be helpful to have an option to classify two products simultaneously. The selection of the two products presented for the choice should be random, with some modest preference for those not yet classified. When there are multiple classifications/selections/choices to be made, the alternatives should all be presented on the same page with the same photos.</p>
<p>Finally, we would like to consider evaluating different/alternate photos for each product to get an opinion of preference. This is similar to an internal version of the A/B test protocol (which, needless to say, should be part of the underlying ecommerce system).</p>
<p>Questions and answers from previous discussions:</p>
<p>Will the classification be hierarchical and if hierarchical to how many levels? &#8212; the primary classification is one of forced choice between two products, choosing which is more appropriate for some classification, such as which of these two products is more appropriate for a man or woman. The other classification tasks are really more like editing product details, and so they don&#8217;t really have the forced choice component.</p>
<p>Do the CSRs need any login page? &#8212; the login page should be part of the pre-existing security for the database, so this is not part of this specific project. Also, we would like to eventually make this classifying/rating task available to customers, tracked, analyzed, and presented separately.</p>
<p>Do you also need to know who did the classification for a product? &#8212; No, this is not important for the CSRs. If we undertake the customer implementation, we would probably consider tracking raters and responses to improve recommendations and market research.</p>
<p>Link: Here is a page from Amazon that describes similar functions, the &#8220;Customers Compare&#8221; feature:</p>
<p><a title="Amazon example" href="http://www.amazon.com/gp/help/customer/display.html/ref=cm_a2a_dp_vot_whats_this/103-1548962-5547031?ie=UTF8&amp;nodeId=200141170">http://www.amazon.com/gp/help/customer/display.html/ref=cm_a2a_dp_vot_whats_this/103-1548962-5547031?ie=UTF8&amp;nodeId=200141170</a></p>

