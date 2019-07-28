class Application 

    def call(env)
        resp = Rack::Response.new
        morning = "Good Morning"
        afternoon = "Good Afternoon"

        time = Time.now.hour 

        if time > 11 
            resp.write(afternoon)
        else 
            resp.write(morning) 
        end 

        resp.finish 
    end 

end 