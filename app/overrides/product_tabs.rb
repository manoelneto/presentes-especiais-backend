Deface::Override.new(:virtual_path => 'spree/admin/shared/_product_tabs',
  :name => 'test',
  :insert_bottom => ".nav.nav-pills.nav-stacked",
  :text => '
    <%= content_tag :li, class: ("active" if current == :personalization) do %>
      <%= link_to_with_icon "home", Spree.t(:personalization), main_app.admin_product_themes_path(@product) %>
    <% end if can?(:personalization, Spree::Product) %>
  ')
