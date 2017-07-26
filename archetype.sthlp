{smcl}
{* *! version 0.0.1  25JUL2017}{...}
{viewerjumpto "About" "archetype##about"}{...}
{viewerjumpto "Syntax" "archetype##syntax"}{...}
{viewerjumpto "Description" "archetype##description"}{...}
{viewerjumpto "Prerequisites" "archetype##prereqs"}{...}
{viewerjumpto "Options" "archetype##options"}{...}
{viewerjumpto "Examples" "archetype##examples"}{...}
{viewerjumpto "Author" "archetype##author"}{...}


{hline}
{p 2 2 8}Stata Maven Archetype{p_end}
{hline}

{marker about}{...}
{title:About}

{phang}
{hi:archetype} A Stata wrapper for the 
{browse "http://github.com/wbuchanan/stataArchetype":Stata Maven archetype}. 
{browse "https://maven.apache.org/index.html":Maven} is a combination of 
dependency management, build, and package specification tool that has extensive 
support in the world of Java development.  
{browse "https://maven.apache.org/archetype/index.html":Maven Archetypes} are 
used to speed up development by automating a significant portion of the Java 
development process that tends to be standard across projects (e.g., directory 
structure, specifying dependencies with a Maven pom file, specifying the 
lifecycle using a Maven pom file, etc...).  The Stata Maven Archetype is unique 
in that it extends a typical Archetype from the pure Java realm to also build 
out the basic class and calling method structure using the required method signature 
for the {browse "http://www.stata.com/java/api":Stata Java API} along with 
templating an .ado and .sthlp file to further reduce development time for those 
wanting to develop Java-based plugins.{p_end}
{break}


{marker syntax}{...}
{title:Syntax}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Required Parameters}
{synopt :{cmdab:gr:oupid}} a groupId value used in a Maven pom file {p_end}
{synopt :{cmdab:art:ifactid}} an artifactId value used in a Maven pom file {p_end}
{synopt :{cmdab:ver:sionnum}} version number for the Java plugin {p_end}
{synopt :{cmdab:pack:age}} package name where the mainclass will be located {p_end}
{synopt :{cmdab:mainc:lass}} class name to use to access the callable method {p_end}
{synopt :{cmdab:javacallm:ethod}} method name to use to call your plugin {p_end}
{synopt :{cmdab:buildd:irectory}} directory where project will be created {p_end}

{syntab:Optional Parameters}
{synopt:{cmdab:git:init}} option to initialize Git repository for project {p_end}
{synopt :{cmdab:sou:rce}} Java version used for source code development {p_end}
{synopt :{cmdab:tar:get}} Java version used for compilation {p_end}
{synopt :{cmdab:desc:ription}} description of the plugin {p_end}
{synopt :{cmdab:devi:d}} unique ID used to identify who you are {p_end}
{synopt :{cmdab:scm:}} source code repository {p_end}
{synopt :{cmdab:orgn:ame}} institutional affiliation {p_end}
{synopt :{cmdab:orgu:rl}} organization's website {p_end}
{synopt :{cmdab:devn:ame}} your name/pseudonym {p_end}
{synopt :{cmdab:devu:rl}} your website address {p_end}
{synopt :{cmdab:deve:mail}} email address to contact for issues {p_end}
{synopt :{cmdab:stv:ersion}} version of Stata required for your plugin {p_end}
{synopt :{cmdab:deb:ug}} turns debug mode on {p_end}
{break}

{marker description}{...}
{title:Description}

{phang}
{cmd:archetype} is a convenience wrapper.  The Stata program provides 
a combination of default values and command line interface wrapper.  Aside from 
requiring Maven to be installed and on your executable path, you should test 
whether or not this will work for you by running:  {p_end}

{phang}
mvn -version

{phang}
from the command line.  If successful you should see something that looks like: {p_end}

{p 8 8 12}
Apache Maven 3.5.0 (ff8f5e7444045639af65f6095c62210b5713f426; 2017-04-03T15:39:06-04:00)
Maven home: /usr/local/Cellar/maven/3.5.0/libexec
Java version: 1.8.0_102, vendor: Oracle Corporation
Java home: /Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "10.12.5", arch: "x86_64", family: "mac"{p_end}


{marker prereqs}{...}
{title:Prerequisites}

{phang}
You can find {browse "https://maven.apache.org/install.html":instructions for installing maven} on the project's website.  
Once maven is installed, you will need to make the Stata Java API jar file accessible to it.  
You can use the snippet below to do this.

{p 8 8 12}findfile libstata-plugin.jar{p_end}
{p 8 8 12}! mvn install:install-file -Dfile="`r(fn)'" -DgroupId=com.stata -DartifactId=sfi -Dversion=`= int(`c(stata_version)')' -Dpackaging=jar{p_end}


{marker options}{...}
{title:Options}

{dlgtab:Required Parameters}

{phang}
{cmdab:gr:oupid} the Maven groupId value for the plugin.  The groupId 
typically uses a URL format in reverse order like com.stata and is used to 
identify packages developed by the same author/group in a Maven repository.  If 
publishing your code to a Maven repository, you will likely be required to 
submit an URL that can be used to identify you and/or your organization.  For 
example, the groupId value that I use for my packages is "org.paces-consulting".  

{phang}
{cmdab:art:ifactid} the Maven artifactId value for the plugin.

{phang}
{cmdab:ver:sionnum} the version number for the plugin.  It is common practice to 
use text in combination with semantic versioning numbers like 1.0.0-SNAPSHOT.

{phang}
{cmdab:pack:age} this will be the java package that contains the class 
referenced in the call to {help javacall}.  Like the groupId, Java packages 
follow the same format of a reverse ordered URL.

{phang}
{cmdab:mainc:lass} this will be the name of the class to create that provides 
access to your plugin from Stata.

{phang}
{cmdab:javacallm:ethod} this is the name of the method to use to reference your 
plugin from the class listed above.

{phang}
{cmdab:buildd:irectory} this is the directory where the project will be created.


{dlgtab:Optional Parameters}

{phang}
{cmdab:git:init} Will initialize a {browse "http://www.git-scm.com":Git} 
repository in the build directory prior to building the files.

{phang}
{cmdab:sou:rce} This is the JVM version to reference for the development of the source code (defaults to 1.8).

{phang}
{cmdab:tar:get} This is the JVM version to use when compiling/packaging your code (defaults to 1.8).

{phang}
{cmdab:desc:ription} This provides a description in both the help file and the pom.xml file.

{phang}
{cmdab:devi:d} this should be a unique id that can be used to identify you
in the project.  If no value is specified, this will default to the value 
returned by {c 'g}c(username)'.

{phang}
{cmdab:scm:} this should be the location where your source code is maintained.  
If no value is specified it will enter a generic placeholder.

{phang}
{cmdab:orgn:ame} your institutional affiliation, if any.

{phang}
{cmdab:orgu:rl} the url for the instituation.

{phang}
{cmdab:devn:ame} the name of the person responsible for developing the source 
code for this project.  If no value is specified, this will default to the value 
returned by {c 'g}c(username)'.

{phang}
{cmdab:devu:rl} your personal and/or developer website address.  This is a 
common field to have in a pom file and if not specified will include a 
placeholder value that you can enter/delete.

{phang}
{cmdab:deve:mail} how to contact someone about issues, bugs, and/or general 
questions related to the Java plugin.

{phang}
{cmdab:stv:ersion} sets the version of Stata that is required by the Java plugin.  
It will default to the current version of Stata if not specified.

{phang}
{cmdab:deb:ug} sets the debug flag when Maven is building the project.


{marker examples}{...}
{title:Examples}{break}

{p 4 4 4}Create a new java plugin project{p_end}

{p 8 8 12}archetype , gr(org.paces-consulting) art(myStataLibrary) ver(0.0.1-SNAPSHOT) pack(org.paces.stata.myArchetypeLibrary) mainc(ArchtypeClass) javacallm(callingMethod) buildd(~/conferenceExample) {p_end}


{marker author}{...}
{title:Author}{break}
{p 2 2 2}William R. Buchanan, Ph.D. {p_end}
{p 2 2 2}Director, Office of Data, Research, & Accountability{p_end}
{p 2 2 2}{browse "http://www.fcps.net":Fayette County Public Schools}{p_end}
{p 2 2 2}Billy.Buchanan at fayette [dot] kyschools [dot] us{p_end}
