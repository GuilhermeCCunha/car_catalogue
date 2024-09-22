module ApplicationHelper
    def active_link_to(name, path)
        paths = [path, "#{path}/new", "#{path}/#{params[:id]}", "#{path}/#{params[:id]}/edit"]
        content_tag(:li, class: "#{'active font-weight-bold bg-light' if paths.any? { |i| current_page?(i)} } nav-item") do
          link_to name, path, class: "nav-link"
        end
    end  
end
