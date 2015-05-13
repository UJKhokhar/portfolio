module ApplicationHelper

  def sort_works_into_rows(works)
    works.each_slice(3).map do |group|
      content_tag :div, class: 'row' do
        group.map do |work|
          content_tag :div, class: 'col-md-3, col-lg-3, col-xs-3' do
            link_to "/works/#{work.id}" do
              image_tag(work.screenshots.thumb.url)
            end
          end
        end.join.html_safe
      end
    end.join.html_safe
  end
  
end
