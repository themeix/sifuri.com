# frozen_string_literal: true

module Jekyll
  class ArchivePaginationGenerator < Generator
    safe true
    priority :low

    def generate(site)
      per_page = site.config['paginate'] || 4
      all_posts = site.posts.docs.reverse

      # Collect all archive pages from site.pages
      archive_pages = site.pages.select { |p| p.data['layout'] == 'archive' }

      new_pages = []

      archive_pages.each do |page|
        matched_posts = []

        if page.data['author']
          # Author archive (all posts belong to Rick Colosimo)
          author_slug = page.data['author'].to_s.downcase
          matched_posts = all_posts.select do |p|
            p_author = p.data['author'].to_s.downcase
            p_author.empty? || p_author == author_slug || Jekyll::Utils.slugify(p_author) == author_slug || author_slug == 'rickcolosimo'
          end
        elsif page.data['category']
          cat_slug = Jekyll::Utils.slugify(page.data['category'].to_s)
          matched_posts = all_posts.select do |p|
            cats = Array(p.data['categories']).map { |c| Jekyll::Utils.slugify(c.to_s) }
            cats.include?(cat_slug)
          end
        elsif page.data['tag']
          tag_slug = Jekyll::Utils.slugify(page.data['tag'].to_s)
          matched_posts = all_posts.select do |p|
            tags = Array(p.data['tags']).map { |t| Jekyll::Utils.slugify(t.to_s) }
            tags.include?(tag_slug)
          end
        elsif page.data['year_month']
          ym = page.data['year_month'].to_s
          matched_posts = all_posts.select do |p|
            p.date.strftime('%Y/%m') == ym
          end
        else
          next
        end

        total_posts = matched_posts.size
        total_pages = (total_posts.to_f / per_page).ceil
        next if total_pages <= 0

        # Base permalink
        base_permalink = page.url || page.data['permalink'] || "/#{page.name.sub(/\.html$/, '')}/"
        base_permalink = "/#{base_permalink}" unless base_permalink.start_with?('/')
        base_permalink = "#{base_permalink}/" unless base_permalink.end_with?('/')

        # Configure Page 1
        page.data['posts'] = matched_posts[0...per_page]
        if total_pages > 1
          page.data['paginator'] = {
            'page' => 1,
            'total_pages' => total_pages,
            'previous_page' => nil,
            'previous_page_path' => nil,
            'next_page' => 2,
            'next_page_path' => "#{base_permalink}page/2/",
            'paginate_path' => "#{base_permalink}page/:num/",
            'first_page_path' => base_permalink
          }
        end

        # Generate Page 2 .. total_pages
        (2..total_pages).each do |num|
          start_idx = (num - 1) * per_page
          end_idx = num * per_page
          page_posts = matched_posts[start_idx...end_idx]

          permalink = "#{base_permalink}page/#{num}/"
          dir = base_permalink.sub(%r{^/}, '').sub(%r{/$}, '') + "/page/#{num}"

          prev_path = (num == 2) ? base_permalink : "#{base_permalink}page/#{num - 1}/"
          next_path = (num == total_pages) ? nil : "#{base_permalink}page/#{num + 1}/"

          new_page = PageWithoutAFile.new(site, site.source, dir, 'index.html')
          new_page.data = page.data.dup
          new_page.data['title'] = "#{page.data['title']} – Page #{num}"
          new_page.data['permalink'] = permalink
          new_page.data['posts'] = page_posts
          new_page.data['paginator'] = {
            'page' => num,
            'total_pages' => total_pages,
            'previous_page' => num - 1,
            'previous_page_path' => prev_path,
            'next_page' => (num < total_pages) ? num + 1 : nil,
            'next_page_path' => next_path,
            'paginate_path' => "#{base_permalink}page/:num/",
            'first_page_path' => base_permalink
          }

          new_pages << new_page
        end
      end

      new_pages.each { |np| site.pages << np }
    end
  end
end
