---
title: Playing with Response
permalink: /docs/rest/response-rest/
---

Returning only `String` in JAX-RS methods is limiting. Of course, Java EE supports that. Creating methods like `public Integer returnSomeInteger{...}` or `public Address returnAddress{...}` is definitely possible. But, if you think about it, binding a method to a single return type is limiting.

- What if the method returns nothing in some cases ?
- What is the method returns different objects for different input parameters ?

For all these cases, there is `Response`. Response is a class from `javax.ws.rs.core` package. It allows you to

- Return any kind of object at any time. Even no object at all, if you want to.
- Precisely control the HTTP Response code. 
- Set HTTP headers
- Control the overall look of HTTP Response, if required.

To use it, simply make the your JAX-RS methods return the above mentioned `Response`. A working example can always be seen and downloaded from [GitHub](https://github.com/javaee-cool/rest-basic-tutorial).

## Basic Response example

Let's create an endpoint that does exactly the same thing as the already created one - return a `Hello, RESTful world !` text. But this time via Response object. In NetBeans, open the already created `MessageResource` class and add one new method that returns `Response`. This method acts as another REST endpoint. It is available under a different URL : `http://{host}:{port}/messages/hello/alternative`.

```java
    @GET
    @Path("/hello/alternative")
    public Response helloRestViaResponse() {
        return Response.ok("Hello, RESTful world ! This message was processed via Response.")
                .build();
    }
```

After the method has been added, the whole class looks like this:

```java
package cool.javaee.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

@Path("/messages")
public class MessageResource {

    @GET
    @Path("/hello")
    public String helloRest() {
        return "Hello, RESTful world !";
    }

    @GET
    @Path("/hello/alternative")
    public Response helloRestViaResponse() {
        return Response.ok("Hello, RESTful world ! Processed via Response.")
                .build();
    }
}
```

Run the whole solution again by running a Maven goal `wildfly-swarm:run` by right clicking on the project name in NetBeans and selecting **Run Maven** -> **Goals**.

## Returning HTTP codes

The HTTP code can be affected when building the response. In the previous example, the method `public Response helloRestViaResponse() {..}` returned a `Response.ok(..)` response. The method `ok()` called on the `Response` is interesting. This method serves as a **shortcut** for `HTTP 200 OK` status code. There is a shortcut method for the most common HTTP status codes.

To sum up, the previous code

```java
        return Response.ok("Hello, RESTful world ! Processed via Response.")
                .build();
```
was just a shorter way to write

```java
        return Response.
                status(Response.Status.OK)
                .entity("Hello, RESTful world ! Processed via Response.")
                .build();
```

A complete list of HTTP status code can be [found on Wikipedia](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes). 

### Returning an error

Start by creating yet another method in the `MessageResource` class. This method will be called `failHello` and will return a response status of HTTP 500.


```java
    @GET
    @Path("/hello/fail")
    public Response failHello() {
        return Response.status(Response.Status.OK)
                .build();
    }
```

After adding the method, the whole `MessageResource` class should look like this:

```java
package cool.javaee.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

@Path("/messages")
public class MessageResource {

    @GET
    @Path("/hello")
    public String helloRest() {
        return "Hello, RESTful world !";
    }

    @GET
    @Path("/hello/alternative")
    public Response helloRestViaResponse() {
        return Response.
                status(Response.Status.OK)
                .entity("Hello, RESTful world ! Processed via Response.")
                .build();
    }

    @GET
    @Path("/hello/fail")
    public Response failHello() {
        return Response.status(Response.Status.OK)
                .build();
    }
}
```

After the changes were made to the class, run the application once again with `wildfly-swarm:run` Maven goal. Now, by calling `http://localhost:8080/messages/hello/fail`, the browser should inform you about an error on the server. That's it. You can try to experiment with HTTP status codes.

## Returning objects

So far, only simple messages were returned. But nowadays, JSON rules the world of APIs. Java EE can return JSON, XML, ATOM ... you name it ! It can produce many at once and the client can specify which format it likes the most. Java EE than converts the returned objects into the format accepted by the client for you.

Let's start by creating a new resource. No more messages. Now we would like to work with people ! The newly created RESTful resource will return information about them.

### Creating the classes

Java is an object-oriented language. A single person would be encapsulated in a class called `Person`. And a crowd of people would be represented as a `List<Person>`. So first, create a `Person` class with one single attribute - person's name. Let's put that `Person` class into a new package named `model`, so the final destination for the class will be `cool.javaee.rest.model.Person`.

```java
package cool.javaee.rest.model;

public class Person {

    private String name;

    public Person(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
```

Then, create a new resource that is dealing with people in the `cool.javaee.rest` package.

```java
package cool.javaee.rest;

import javax.ws.rs.Path;

@Path("/people")
public class PeopleResource {

}
```

Right now, the endpoint does nothing. This can be changed easily by adding a new Java method, just the same way as before. Two new people will be created: **Karl von Bahnhoff* from Germany and **Thor the Hammerhead** from Sweden. Then, a new method `public Response getPopulation(){..}` will return those people anytime it is called. 

The whole class after implementation looks like this:

```java
package cool.javaee.rest;

import cool.javaee.rest.model.Person;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/people")
public class PeopleResource {

    private static final Person CARL = new Person("Karl von Bahnhoff");
    private static final Person THOR = new Person("Thor the Hammerhead");

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public Response getPopulation() {

        List<Person> people = new ArrayList<>();
        people.add(CARL);
        people.add(THOR);

        return Response.ok(people)
                .build();
    }

}

```

Please note that

- There is no `@Path` annotation on the `getPopulation()` method.
- There is new annotation `@Produces({MediaType.APPLICATION_JSON})`

The missing `@Path` annotation simply means that this endpoint is available under the `@Path("/people")` address - this is annotated on `PeopleResource` class. the `@Produces` annotation takes an array of MediaType strings. For developers convenience, those constants are stored in `MediaType` class coming again from the package `javax.ws.rs.core`. The annotation serves one purpose - it defines which formats are allowed. Formats not mentioned here will not be returned by Java EE, even if those are correct and supported.

### Obtaining the people

Start the application with `wildfly-swarm:run` Maven command once again. Open the URL `http://localhost:8080/people` in your browser. The response contains a JSON array with two people.

```json
[{"name":"Karl von Bahnhoff"},{"name":"Thor the Hammerhead"}]
```

## Done
Returning a `Response` from JAX-RS methods brings many advantages. `Response` offers control over **what** is returned and **how** it is returned. You can experiment with methods present in the Response class.

The complete source code can be found on [GitHub](https://github.com/javaee-cool/rest-basic-tutorial).