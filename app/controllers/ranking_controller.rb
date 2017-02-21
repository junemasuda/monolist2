class RankingController < ApplicationController
  def have
   Have.group(:item_id).order('count_item_id desc').count(:item_id)
   @items = Item.finds(ids).sort_by do |element|
     ids.index(element.id)
   end
  end

  def want
   Want.group(:item_id).order('count_item_id desc').count(:item_id)
   @items = Item.finds(ids).sort_by do |element|
     ids.index(element.id)
   end
  end
end
