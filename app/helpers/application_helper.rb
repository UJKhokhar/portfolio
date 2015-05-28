module ApplicationHelper

  def sort_works_into_rows(works)
    works.each_slice(4).map do |group|
      content_tag :div, class: 'row' do
        group.map do |work|
          content_tag :div, class: 'work-col col-lg-3 col-md-6 col-xs-12' do
            link_to "/works/#{work.id}" do
              image_tag("https://ujk-portfolio-development.s3.amazonaws.com/uploads/work/#{work.name}/#{work.name}.svg", class: 'work-img')
            end
          end
        end.join.html_safe
      end
    end.join.html_safe
  end
  
end
