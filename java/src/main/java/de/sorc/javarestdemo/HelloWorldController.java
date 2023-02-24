package de.sorc.javarestdemo;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * RestController implementation with the get endpoint.
 */
@RestController
@RequestMapping("/hello")
public class HelloWorldController {

    /**
     * The get endpoint that returns a greeting as JSON.
     */
    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public HelloResponse get() {
        HelloResponse response = new HelloResponse();
        response.setGreeting("Hello");
        response.setName("World");
        return response;
    }
}
