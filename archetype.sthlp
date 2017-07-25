{smcl}
{* *! version 0.0.1  25JUL2017}{...}

{hline}
{p 2 2 8}Stata Maven Archetype{p_end}
{hline}

{marker title}{title:help for archetype}

{p 4 4 8}{hi:archetype {hline 2}} A Stata wrapper for the 
{browse "http://github.com/wbuchanan/stataArchetype": Stata Maven archetype}. 
{browse "https://maven.apache.org/index.html": Maven} is a combination of 
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
wanting to develop Java-based plugins.
{break}

{title:Description}

{p 4 4 4}{cmd:archetype} is a convenience wrapper.  The Stata program provides 
a combination of default values and command line interface wrapper.  Aside from 
requiring Maven to be installed and on your executable path, you should test 
whether or not this will work for you by running:  {p_end}

{p 8 8 12}mvn -version{p_end}

{p 4 4 4}from the command line.  If successful you should see something that looks like: {p_end}

{p 8 8 12}Apache Maven 3.5.0 (ff8f5e7444045639af65f6095c62210b5713f426; 2017-04-03T15:39:06-04:00){p_end}
{p 8 8 12}Maven home: /usr/local/Cellar/maven/3.5.0/libexec{p_end}
{p 8 8 12}Java version: 1.8.0_102, vendor: Oracle Corporation{p_end}
{p 8 8 12}Java home: /Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home/jre{p_end}
{p 8 8 12}Default locale: en_US, platform encoding: UTF-8{p_end}
{p 8 8 12}OS name: "mac os x", version: "10.12.5", arch: "x86_64", family: "mac"{p_end}


{title:Syntax}

{synoptset 20 notes}
{synopthdr:Required Options}
{synopt:{cmdab:gr:oupid}}The Maven groupId value for the plugin (see 1).
{synopt:{cmdab:art:ifactid}}The Maven artifactId value for the plugin.
{synopt:{cmdab:ver:sionnum}}The version number for the plugin (see 2).
{synopt:{cmdab:pack:age}}This will be the java package that contains the class referenced in the call to {help javacall} (see 3).
{synopt:{cmdab:mainc:lass}}This will be the name of the class to create that provides access to your plugin from Stata.
{synopt:{cmdab:javacallm:ethod}}This is the name of the method to use to reference your plugin from the class listed above.
{synopt:{cmdab:buildd:irectory}}This is the directory where the project should be created.
{synopt:1}The groupId typically uses a URL format in reverse order like com.stata.
{synopt:2}It is common practice to use text in combination with semantic versioning numbers like 1.0.0-SNAPSHOT.
{synopt:3}Like the groupId, Java packages follow the same format of a reverse ordered URL.
{break}

{synoptset 20 tabbed}
{synopt:{cmdab:git:init}}Will initialize a {browse "http://www.git-scm.com":Git} repository in the build directory prior to building the files.
{synopt:{cmdab:sou:rce}}This is the JVM version to reference for the development of the source code (defaults to 1.8).
{synopt:{cmdab:tar:get}}This is the JVM version to use when compiling/packaging your code (defaults to 1.8).
{synopt:{cmdab:desc:ription}}This provides a description in both the help file and the pom.xml file.
{synopt:{cmdab:dev:eloperid}}This would be best as your username for any source control systems you use (defaults to your username).
{synopt:{cmdab:scm:}}The URL used for this project's source control/versioning.
{synopt:{cmdab:orgn:ame}}Your institutional affiliation.
{synopt:{cmdab:orgu:rl}}The URL for the organization you are affiliated with.
{synopt:{cmdab:devn:ame}}Your given name (defaults to your username).
{synopt:{cmdab:devu:rl}}Your personal/developer URL.
{synopt:{cmdab:deve:mail}}An email address you use for your development work.
{synopt:{cmdab:deb:ug}}Turns on the debug mode when Maven is building the project.
{break}

{title:Options}
{title:Required Parameters}
{p 4 4 8}{cmdab:gr:oupid}{p_end}
{p 4 4 8}{cmdab:art:ifactid}{p_end}
{p 4 4 8}{cmdab:ver:sionnum}{p_end}
{p 4 4 8}{cmdab:pack:age}{p_end}
{p 4 4 8}{cmdab:mainc:lass}{p_end}
{p 4 4 8}{cmdab:javacallm:ethod}{p_end}
{p 4 4 8}{cmdab:buildd:irectory}{p_end}


{title:Optional Parameters}
{p 4 4 8}{cmdab:git:init}{p_end}
{p 4 4 8}{cmdab:sou:rce}{p_end}
{p 4 4 8}{cmdab:tar:get}{p_end} 
{p 4 4 8}{cmdab:desc:ription}{p_end} 
{p 4 4 8}{cmdab:dev:eloperid}{p_end}  
{p 4 4 8}{cmdab:scm:}{p_end}
{p 4 4 8}{cmdab:orgn:ame}{p_end}
{p 4 4 8}{cmdab:orgu:rl}{p_end}  
{p 4 4 8}{cmdab:devn:ame}{p_end} 
{p 4 4 8}{cmdab:devu:rl}{p_end}
{p 4 4 8}{cmdab:deve:mail}{p_end}  
{p 4 4 8}{cmdab:deb:ug}{p_end}


{marker examples}{title:Examples}{break}

{p 4 4 4}Task{p_end}

{p 8 8 12}example code{p_end}

{title: Author}{break}
{p 2 2 2}William R. Buchanan, Ph.D. {p_end}
{p 2 2 2}Director, Office of Data, Research, & Accountability{p_end}
{p 2 2 2}{browse "http://www.fcps.net":Fayette County Public Schools}{p_end}
{p 2 2 2}Billy.Buchanan at fayette [dot] kyschools [dot] us{p_end}
