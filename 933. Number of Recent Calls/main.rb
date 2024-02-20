class RecentCounter
    def initialize()
        @queue = []
    end


=begin
    :type t: Integer
    :rtype: Integer
=end
    def ping(t)
        if @queue.size > 0
            while !@queue.empty? && @queue[0] < t - 3000
                @queue.shift
            end
        end

        @queue << t
        @queue.size
    end


end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)