module Raven
  class InMemoryAsyncSender
    def initialize(queue_size: 100, worker_count: 1, logger: Raven.logger)
      @worker_count = worker_count
      @logger = logger
      @unsent = SizedQueue.new(queue_size)
      @workers = ThreadGroup.new
      @running = false
      @pid = nil
      @mutex = Mutex.new
    end

    def call(event)
      ensure_workers_running
      return will_not_deliver(event) if @unsent.size >= @unsent.max

      @unsent << event
    end

    private

    def ensure_workers_running
      return if @running

      @mutex.synchronize do
        @running = true

        if @pid != Process.pid && @workers.list.empty?
          @pid = Process.pid
          spawn_workers
        end
      end
    end

    def spawn_workers
      @worker_count.times { @workers.add(spawn_worker) }
      @workers.enclose
    end

    def spawn_worker
      Thread.new do
        while (event = @unsent.pop)
          Raven.send_event(event)
        end
      end
    end

    def will_not_deliver(event)
      @logger.warn(
        'Raven::InMemoryAsyncSender has reaced its capacity of '          \
        "#{@unsent.max} and the following notice will not be delivered: " \
        "#{event.inspect}."
      )
    end
  end
end
