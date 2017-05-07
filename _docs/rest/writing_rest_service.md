---
title: Implementing the REST service
permalink: /docs/rest/writing-rest-service/
---

Project is created, the time has come to just implement some behavior. This is by far the easiest task. It takes just two steps to do it.

1. Create a Java class represeting the REST resource
2. Set the path of the REST resource

Noting more.

## Creating the REST resource

With the project opened in NetBeans, expand the **Source packages** tree on the left. You will se package structure like `cool.javaee.rest`, or some different packages, if you chose to name your project differently. The package view may differ depending on your NetBeans settings. You may actually see it as a folder structure - that is completely ok, it is just a different view on the same thing. 

Right click on last package, in this case `cool.javaee.rest` and in the pop-up menu, select **New** -> **Java Class**. A new window will pop up. In this window, NetBeans asks the developer to provide a name for the new class. The name actually does not matter that much, but choosing something appropriate helps to keep things in order. First task is to send a simple message to the client. Therefore, the class will be named `MessageResource`. Leave the other options intact.

<a href="/docs/rest/img/message_resource_naming.png" target="_blank">
    <img src="/docs/rest/img/message_resource_naming.png">
</a> 

Click on **Finish** button and you are done. 

### Writing the code

After the **Finish** button is hit, NetBeans will create a new class that will look almost like the one below. NetBeans will automaticalyl create `JavaDoc` documentation with some user name taken from the system, if not set. This commentary beginning with `/**` and ending with `*/` can be deleted.

```java
package cool.javaee.rest;

/**
 * @author Some Author
 */
public class MessageResource {

}
```

Such class does nothing. Therefore, it is some to implement some behavior. To create a RESTful endpoint returning a String message, simply write a Java method with String return type. The endpoint could return some message like `Hello, RESTful world !`. Name of the method actually does not matter. The example below is already without the author commentary.

```java
package cool.javaee.rest;

public class MessageResource {

    public String helloRest() {
        return "Hello, RESTful world !";
    }

}
```

The service itself is now done and implemented. But, how the service is **accessible** is yet not declared ! It is mostly desired for the RESTful service to be available over HTTP protocol under certain URL, so let's choose one. For example `http://{host}:{port}/messages/hello` seems to be just fine.

Achieving that is pretty simple. First, let's tell Java EE what is the context path of the whole **resource for messages**. To do it, there is a `@Path` annotation from the `javax.ws.rs` package. Please do insert the annotation above the `MessageResource` class. Inside the annotation, write a string with the desired path. For example `@Path("messages")`. The whole class will now look like this:

```java
package cool.javaee.rest;

import javax.ws.rs.Path;

@Path("/messages")
public class MessageResource {

    public String helloRest() {
        return "Hello, RESTful world !";
    }
}
```

Right now, there path of the whole RESTful resource is defined. This represents the `http://{host}:{port}/messages/...` part of the path. But there is a concrete `helloRest` endpoint we would like to make accessible. After choosing a proper context path for the endpoint, in our case `/hello`, simply repeat the `@Path` annotation on the `public String helloRest(){...}` method. Then add an information over which HTTP method should the endpoint be accessible. In this case, a simple **HTTP GET** will do. For this purpose, add `@GET` annotation from the same `javax.ws.rs` package. After doing so, the endpoint will look like this.

```java
package cool.javaee.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("/messages")
public class MessageResource {

    @GET
    @Path("/hello")
    public String helloRest() {
        return "Hello, RESTful world !";
    }
}

```

## Done
This is it. Now, the REST endpoint will be accessible via `http://{host}:{port}/messages/hello`. For example via `http://localhost:8080/messages/hello` or `http://google.com/messages/hello` or anywhere you deploy the service :) Java EE does all the hard work for you - running an HTTP server, handling errors ... anything.

The service is implemented and **ready to be ran**. Running the service is explained in the next chapter.

