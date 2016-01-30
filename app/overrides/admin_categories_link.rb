Deface::Override.new(:virtual_path => 'spree/admin/shared/sub_menu/_product',
  :name => 'admin_categories_link',
  :insert_bottom => "#sidebar-product",
  :text => '
    <li class="sidebar-menu-item">
      <%= link_to "Categories", main_app.admin_categories_path %>
    </li>
  ')
