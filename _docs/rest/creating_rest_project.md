---
title: Creating the project
permalink: /docs/rest/creating-rest-project/
---

Creating REST resources with Java EE is fast and easy. The part of Java EE that takes care about REST is called **Java API for RESTful Web Services**, or shortly **JAX-RS**. Creating your first RESTful web service with Java EE is a matter of **three steps only**.

1. Create a Maven Web Project in NetBeans
1. Create a JAX-RS class represeting the RESTful resource
1. Run the application

The whole project can be [downloaded from GitHub](https://github.com/javaee-cool/rest-basic-tutorial). You can simply `git clone` it or `download it as a zip` and extract it. The project can be opened in NetBeans right away. Just go to **File** -> **Open project** and navigate to the folder with the project. It is recommended to build the whole project from scratch, but this way, can have a look at the final, working solution.

## Start with NetBeans

1. Open NetBeans.
1. In the upper left corner, select **File** -> **New Project**.
1. A window pops up. In the left part, select **Maven**. Then, in the right part, select **Web Application**.

<a href="/docs/rest/img/netbeans_new_project.png" target="_blank">
    <img src="/docs/rest/img/netbeans_new_project.png">
</a>

### Filling project details

Click **Next** after selecting the Maven Web Application project. A **new dialog** requiring project name will pop up. A Java EE project deserves a proper naming. Let us keep things clean & tidy and fill those accordingly. After filling the form, click **Next**.

<a href="/docs/rest/img/rest_name_and_location.png" target="_blank">
    <img src="/docs/rest/img/rest_name_and_location.png">
</a>

**The values are following**

| Field name       | Value                                     |
|------------------|-------------------------------------------|
| Project name     | RestService                               |
| Project location | Any folder on your system                 |
| Artifact Id      | Automatically generated from Project name |
| Group Id         | cool.javaee.rest                          |
| Version          | 1.0                                       |
| Package          | cool.javaee.rest                          |

### Finishing project creation

Click **Next* in the Name and Location dialogue, if you have not done it yet. One final dialogue will pop up. 


<a href="/docs/rest/img/web_application_pick_server.png" target="_blank">
    <img src="/docs/rest/img/web_application_pick_server.png">
</a>

**The values are following**

| Field name      | Value              |
|-----------------|--------------------|
| Server          | No server selected |
| Java EE Version | Java EE 7 Web      |

#### Click Finish

And the project is created properly. NetBeans has generated a Maven project for you. Maven is a project build tool that makes it easy for you to download and manage external dependencies (e.g. libraries) for your project, among many other things. NetBeans is able to generate the whole project for you. You will see the project created on the left side of NetBeans.

<a href="/docs/rest/img/blank_rest_project.png" target="_blank">
    <img src="/docs/rest/img/blank_rest_project.png">
</a>

Now you can just **create the RESTful service**, which is described in the **next chapter**.