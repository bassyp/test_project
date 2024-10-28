class NavbarComponent < ApplicationComponent #Phlex::HTML

  def view_template
    parents = LinkItem.where(parent_id: nil).first.childs
    div(class: "navbar bg-base-100") do
      div(class: "navbar-start") do
        div(class: "dropdown") do
          div(
            tabindex: "0",
            role: "button",
            class: "btn btn-ghost lg:hidden"
          ) do
            svg(
              xmlns: "http://www.w3.org/2000/svg",
              class: "h-5 w-5",
              fill: "none",
              viewbox: "0 0 24 24",
              stroke: "currentColor"
            ) do |s|
              s.path(
                stroke_linecap: "round",
                stroke_linejoin: "round",
                stroke_width: "2",
                d: "M4 6h16M4 12h8m-8 6h16"
              )
            end
          end
          ul(
            tabindex: "0",
            class:
              "menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow"
          ) do
            li { a { "Item 1" } }
            li do
              a { "Parent" }
              ul(class: "p-3") do
                li { a { "Submenu 1" } }
                li { a { "Submenu 2" } }
              end
            end
            li { a { "Item 3" } }
          end
        end
        a(
          class: "btn btn-ghost text-xl",
          title: "Ruby on Rails - Business Support System"
        ) { "RRBBS" }
      end
      div(class: "navbar-center hidden lg:flex") do
        ul(class: "menu menu-horizontal px-1") do
          navigation_links(parents)
          
        end
      end
      div(class: "navbar-end") do
        div(class: "form-control") do
          input(
            placeholder: "Search",
            class: "input input-bordered w-24 md:w-auto"
          )
        end
        div(class: "dropdown dropdown-end") do
          div(
            tabindex: "0",
            role: "button",
            class: "btn btn-ghost btn-circle avatar"
          ) do
            div(class: "w-10 rounded-full") do
              img(
                alt: "Tailwind CSS Navbar component",
                src:
                  "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
              )
            end
          end
          ul(
            tabindex: "0",
            class:
              "menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow"
          ) do
            li do
              a(class: "justify-between") do
                plain " Profile "
                span(class: "badge") { "New" }
              end
            end
            li { a { "Settings" } }
            li { a { "Logout" } }
          end
        end
      end
    end
  end
  def navigation_links(links)
    links.try(:each){|link|
      childs      = link.childs
      search_href = nil
      if link.f_type == 'link'
        if link.url.present?
          main_href = link.url
        else
          main_href   = "/#{link.controller_name}/#{link.action_name}/#{link.id_key}"
          if link.include_search_link
            search_href = "/#{link.controller_name}/search_lement/"
          end
        end
        if search_href.present?
          li { 
            div(class: "grid grid-cols-12 gap-4") do
              div(class: "col-span-8") do
                a(href: main_href, target: link.target)  { link.title.html_safe } 
              end
              div(class: "col-span-4") do
                a(href: search_href, target: link.target)  { "<i class='fa-solid fa-magnifying-glass'></i>".html_safe }     
              end
              
            end
            
          }
        else
          li { a(href: main_href, target: link.target)  { link.title.html_safe } }
        end
        
      elsif link.f_type == 'group'
        li do
          details do
            summary { link.title.html_safe}
            ul(class: "p-2") do
              navigation_links(childs)
            end
          end
        end
      elsif link.f_type == 'divider'
        hr(class: "my-2 h-0 border border-t-0 border-solid border-neutral-100 dark:border-white/10") do
          
        end
      elsif link.f_type == 'headline'
        span(class: "block w-full whitespace-nowrap bg-white px-4 py-2 text-sm font-normal text-surface/50 focus:outline-none dark:bg-surface-dark dark:text-white/75") do
           link.title.html_safe
        end
      end
    }
  end
end