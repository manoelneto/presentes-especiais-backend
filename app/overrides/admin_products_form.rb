Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'admin_products_form',
  :insert_bottom => "[data-hook=admin_product_form_right]",
  :text => '
    <div data-hook="admin_product_form_category">
      <%= f.field_container :slug, class: ["form-group"] do %>
        <%= f.label :category_id, Spree.t(:category) %>
        <%= f.collection_select(:spree_category_id, @categories, :id, :name, { include_blank: Spree.t("match_choices.none") }, { class: "select2", disabled: false }) %>
        <%#= f.error_message_on :category %>
      <% end %>
    </div>
  ')
