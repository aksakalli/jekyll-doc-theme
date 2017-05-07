---
title: Consuming and validating data
permalink: /docs/rest/consuming-client-data/
---

So far, all the RESTful services only provided data. In this chapter, it will be shown how easy it is to consume data with Java EE. Consumed data may be incomplete, malformed or even dangerous. Therefore, it will be shown how to leverage [Bean validation](http://beanvalidation.org/) to protect the application.

The working example is always available on [GitHub](https://github.com/javaee-cool/rest-basic-tutorial).

## Adding people

To demonstrate input validation, a new class `ValidatedPerson` will be created in the `cool.javaee.rest.model` package. The class itself is the same as the original `Person class`, but now it has **validation annotations* added. The `@NotNull` from the `javax.validation.constraints` package ensures that name must always carry a value and may never be null. The `@Size` validation annotation enforces a maximal length of the `name` attribute to 30 characters. The annotations are context-sensitive. Using the `@Size` annotation on an `Integer` would result in a min/max value check. It is important to say that Java EE makes sure the validation conditions are met. If not, it will automatically generete appropriate response (an error message).

```java
package cool.javaee.rest.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ValidatedPerson {

    @NotNull
    @Size(max = 30)
    private String name;

    public ValidatedPerson() {

    }

    public ValidatedPerson(String name) {
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

In the current application, there is `PeopleResource` class with only one method `public Response getPopulation(){..}`. Let's extend the class with another method named `postPerson`. This method will consume ValidatedPerson in JSON format and add it to a common collection named `postedPeople`.

The `ValidatedPerson` in the request body must not be empty. This is enforced by `@NotNull` annotation from the `javax.validation.constraints` package. If the client makes an attempt to call the endpoint without providing any Person, Java EE will automatically generate appropriate response. The `@Valid annotation` is also a validation constraint. It tells Java EE to validate the attributes inside the `ValidatedPerson` object. This annotation is useful, because there may be situations where you as a developer want to keep the validation disabled.

The `PeopleResource` class with the `postPerson` method and `postedPeople` collection added looks like the following example.


```java
package cool.javaee.rest;

import cool.javaee.rest.model.Person;
import cool.javaee.rest.model.ValidatedPerson;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/people")
public class PeopleResource {

    private static final Person CARL = new Person("Karl von Bahnhoff");
    private static final Person THOR = new Person("Thor the Hammerhead");

    private static final List<ValidatedPerson> POSTED_PEOPLE = Collections.synchronizedList(new ArrayList<ValidatedPerson>());

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public Response getPopulation() {
        Person[] people = new Person[]{CARL, THOR};

        return Response.ok(people)
                .build();
    }

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    public Response postPerson(@Valid @NotNull ValidatedPerson person) {
        POSTED_PEOPLE.add(person);

        return Response.ok()
                .build();
    }
}
```

Now is a good time to run the application once again with the well-known `wildfly-swarm:run` Maven goal.

### Posting people as a client

When the application is running, a client is able to invoke the `POST http://{host}:{port}/people` endpoint and add a person. Invoking REST endpoints via HTTP POST method is something a browser is not very well suited for. Luckily, there are many applications that absolutely shine when it comes to invoking HTTP resources. One of them is [Postman](https://www.getpostman.com/). Postman is available for all major platforms. It is even available as a Chrome extension. Please **do install** [Postman](https://www.getpostman.com/) if you do not own it already. 

After Postman is up and running, it is time to fill the request. The URL is `http://localhost:8080/people` according to the endpoint we have just created. However, the method is `POST` instead of `GET`. Make sure to change it in the switch on the left to the URL input field.

Switch to one of the tabs below the URL input field called `Body` and check the `raw` radio button. Then, from the drop-down menu to the right of the radio buttons, pick `application/json`. Finally, insert the following person into the request body:

```json
{
    "name": "John Doe"
}
```

The whole setup is demonstrated on the following image.

<a href="/docs/rest/img/postman_post_person.png" target="_blank">
    <img src="/docs/rest/img/postman_post_person.png">
</a>

Now post it. If the application is running and the request is correct, you should see a response status reading "200 OK"


## Retrieving posted people

Posting new people is cool, but there should be a way to retrieve them as well. Nothing easier. Add a new method `getPostedPeople`. This method accepts one HTTP query parameter named `maxPeople`. We will use this parameter to tell us about the maximum number of people the client wants to get returned. But what if the client does not supply any value ? No problem, let's add a `@DefaultValue` value as well. As you can see from the import section of the `PeopleResource` class, the `@DefaultValue` annotation comes from `javax.ws.rs` package.

```java
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/posted")
    public Response getPostedPeople(@DefaultValue("1") @QueryParam("maxPeople") int maxPeople) {

        return Response.ok(POSTED_PEOPLE.subList(0, Math.min(maxPeople, POSTED_PEOPLE.size())))
                .build();
    }
```


The whole class with the `getPostedPeople` method added looks like this:

```java
package cool.javaee.rest;

import cool.javaee.rest.model.Person;
import cool.javaee.rest.model.ValidatedPerson;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.ws.rs.Consumes;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/people")
public class PeopleResource {

    private static final Person CARL = new Person("Karl von Bahnhoff");
    private static final Person THOR = new Person("Thor the Hammerhead");

    private static final List<ValidatedPerson> POSTED_PEOPLE = Collections.synchronizedList(new ArrayList<ValidatedPerson>());

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public Response getPopulation() {
        Person[] people = new Person[]{CARL, THOR};

        return Response.ok(people)
                .build();
    }

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    public Response postPerson(@Valid @NotNull ValidatedPerson person) {
        POSTED_PEOPLE.add(person);

        return Response.ok()
                .build();
    }

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/posted")
    public Response getPostedPeople(@DefaultValue("1") @QueryParam("maxPeople") int maxPeople) {

        return Response.ok(POSTED_PEOPLE.subList(0, Math.min(maxPeople, POSTED_PEOPLE.size())))
                .build();
    }
}

```

Only a sublist of people is returned, if there are any people at all in the list of submitted people. However, if the maxPeople is higher than the number of elements in the POSTED_PEOPLE List, only the exact number of elements in the POSTED_PEOPLE is returned. This is ensured with `POSTED_PEOPLE.subList(0, Math.min(maxPeople, POSTED_PEOPLE.size()))`.

### Querying for submitted people

Asking for submitted people is a simple HTTP GET request to `http://{host}:{port}/people/posted`. For example on localhost with the WildFly Swarm, it is `http://localhost:8080/people/posted`. Additionally, the `maxPeople` parameter can be added. The URL with the maxPeople parameter it is `http://localhost:8080/people/posted?maxPeople=10`. If the parameter is not present, the default value is used. A browser can be used for it. But since you already have Postman, why not use Postman ?

<a href="/docs/rest/img/postman_get_posted_people.png" target="_blank">
    <img src="/docs/rest/img/postman_get_posted_people.png">
</a>

Before quering the service, make sure to run it with `wildfly-swarm:run` Maven goal.

1. Add few people by invoking the `POST http://localhost:8080/people` via Postman.
1. Ask the application for the submitted people by calling `GET http://localhost:8080/people/posted` in browser or in postman.

Be careful, the endpoint returns only one person by default. Try for example `GET http://localhost:8080/people/posted?maxPeople=10` to obtain more.

Remember, the working example is always available on [GitHub](https://github.com/javaee-cool/rest-basic-tutorial).

## Done

If you would like to know more about bean validation, please visit the [official website](http://beanvalidation.org/). There you can find an exhaustive list of all the validation possibilities. Java EE validation standard is used not only Java EE, but it is so good it is reused across many different frameworks :)