class ApplicationController < ActionController::Base
  before_action :count
  def count
		counter = Counter.find_by(id: 1)
    if controller_name == 'tops'
      if counter.present?
        count = counter.count.to_i + 1
        counter.count = count
        counter.save!
        @total_count = count
      else
        counter = Counter.new(count: 0)
        counter.save!
        @total_count = counter.count
      end
    else
      @total_count = counter.count if counter.present?
    end
  end
end
