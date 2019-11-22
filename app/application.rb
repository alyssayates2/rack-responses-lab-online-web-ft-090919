class Application

  def call(env)
    resp = Rack::Time.new

    morning = Kernel.rand(0..12)
    afternoon = Kernel.rand(12..24)

    resp.write "#{morning}\n"
    resp.write "#{afternoon}\n"

    if morning==evening
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end

      resp.finish
    end

  end
