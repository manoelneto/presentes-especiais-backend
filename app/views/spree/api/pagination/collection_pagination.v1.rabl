node(:count) { locals[:itens].count }
node(:total_count) { locals[:itens].total_count }
node(:current_page) { params[:page] ? params[:page].to_i : 1 }
node(:per_page) { params[:per_page] || Kaminari.config.default_per_page }
node(:pages) { locals[:itens].num_pages }
