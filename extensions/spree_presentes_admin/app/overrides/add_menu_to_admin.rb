# Deface::Override.new(:virtual_path => 'spree/layouts/admin',
#   :name => 'add_sale_price_to_product_edit',
#   :insert_bottom => "#main-sidebar",
#   :text => '
#     <% if can? :admin, current_store %>
#       <ul class="nav nav-sidebar">
#         <%= main_menu_tree Spree.t(:configurations), icon: "wrench", sub_menu: "configuration", url: "#sidebar-configuration" %>
#       </ul>
#     <% end %>
#   ')
