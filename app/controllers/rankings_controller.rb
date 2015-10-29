class RankingsController < ApplicationController
    
    def have_ranking
        @ranks = Have.group(:item_id).order('count_all desc').limit(10).count
        ids = @ranks.keys
        @items = Item.find(ids)
    end

    def want_ranking
        @ranks = Want.group(:item_id).order('count_all desc').limit(10).count
        ids = @ranks.keys
        @items = Item.find(ids)
    end

end
