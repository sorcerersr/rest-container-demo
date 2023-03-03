package de.sorc;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Set;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

@Path("/hello")
public class GreetingResource {

    private Greeting greeting;

    public GreetingResource() {
        this.greeting = new Greeting("Hello", "World");
    }

    @GET
    public Greeting getGreeting() {
        return this.greeting;
    }

}
