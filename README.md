# Stata Archetype
This repository defines a [Maven Archetype](http://maven.apache.org/archetype/index.html) for developing Java plugins for Stata.  It is fairly barebones and defines a Maven dependency for the Jar that has the Java API classes and methods.  It also defines an example `.ado` and `.sthlp` file that can be used to define the Stata wrapper that would call the plugin.  Both of the boilerplate Stata files contain commented advise/formatting for those who are less experienced programming in Stata as well.

## Examples
In the example subdirectory you can see the project that would be generated by this archetype.  I'm not aware of any way to rename files, but the files themselves could at least be used fairly quickly/easily to get your Java plugin project started.  Most IDE's have tools for building projects from Maven Archetypes, but if you wanted to create a new project from the command line you can do that as well.  The example below shows what the process looks like when you want to not use the default values currently in use for illustrative purposes:

```
mvn archetype:generate \
-DarchetypeGroupId=org.paces-consulting \
-DarchetypeArtifactId=stata-archetype \
-DarchetypeVersion=0.0.0-SNAPSHOT

[INFO] Scanning for projects...
[INFO]                                                                         
[INFO] ------------------------------------------------------------------------
[INFO] Building Maven Stub Project (No POM) 1
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] >>> maven-archetype-plugin:2.4:generate (default-cli) > generate-sources @ standalone-pom >>>
[INFO] 
[INFO] <<< maven-archetype-plugin:2.4:generate (default-cli) < generate-sources @ standalone-pom <<<
[INFO] 
[INFO] --- maven-archetype-plugin:2.4:generate (default-cli) @ standalone-pom ---
[INFO] Generating project in Interactive mode
[INFO] Archetype repository not defined. Using the one from [org.paces-consulting:stata-archetype:0.0.0-SNAPSHOT] found in catalog local
[INFO] Using property: groupId = org.paces-consulting
[INFO] Using property: artifactId = stata-plugin
[INFO] Using property: version = 0.0.0
[INFO] Using property: package = org.paces.stata.plugins
[INFO] Using property: description = Describe your project here
[INFO] Using property: developer_email = spam@nospam.spam
[INFO] Using property: developer_id = Good Idea to use your GitHub User Name to Populate the SCM entries.
[INFO] Using property: developer_name = Put Your Name Here
[INFO] Using property: developer_url = http://www.yoursite.com
[INFO] Using property: entryMethod = pluginMethod
[INFO] Using property: mainClass = StataPlugin
[INFO] Using property: organization_name = Your Institutional Affiliation Should Go Here
[INFO] Using property: organization_url = http://www.yourOrganization.com
Define value for property 'scm':  https://github.com/Good Idea to use your GitHub User Name to Populate the SCM entries./stata-plugin.git: : 
[INFO] Using property: source = 1.8
[INFO] Using property: target = 1.8
Confirm properties configuration:
groupId: org.paces-consulting
artifactId: stata-plugin
version: 0.0.0
package: org.paces.stata.plugins
description: Describe your project here
developer_email: spam@nospam.spam
developer_id: Good Idea to use your GitHub User Name to Populate the SCM entries.
developer_name: Put Your Name Here
developer_url: http://www.yoursite.com
entryMethod: pluginMethod
mainClass: StataPlugin
organization_name: Your Institutional Affiliation Should Go Here
organization_url: http://www.yourOrganization.com
scm: https://github.com/Good Idea to use your GitHub User Name to Populate the SCM entries./stata-plugin.git
source: 1.8
target: 1.8
 Y: : n
Define value for property 'groupId':  org.paces-consulting: : com.yoursite
Define value for property 'artifactId':  stata-plugin: : yourProject
Define value for property 'version':  0.0.0: : 
Define value for property 'package':  org.paces.stata.plugins: : com.yoursite.yourProject.Stata      
Define value for property 'description':  Describe your project here: : What    This project does some stuff and some things, but does not like spam.
Define value for property 'developer_email':  spam@nospam.spam: : 
Define value for property 'developer_id':  Good Idea to use your GitHub User Name to Populate the SCM entries.: : w Y username
Define value for property 'developer_name':  Put Your Name Here: : Your Actual Name
Define value for property 'developer_url':  http://www.yoursite.com: : Your Personal             http: s://github.com/wbuchanan
Define value for property 'entryMethod':  pluginMethod: : methodUsedByJavacallCommand
Define value for property 'mainClass':  StataPlugin: : ClassUsedBytJ  JavacallCommand
Define value for property 'organization_name':  Your Institutional Affiliation Should Go Here: : Where you work
Define value for property 'organization_url':  http://www.yourOrganization.com: : Your work website
Define value for property 'scm':  https://github.com/username/yourProject.git: : 
Define value for property 'source':  1.8: : 
Define value for property 'target':  1.8: : 
Confirm properties configuration:
groupId: com.yoursite
artifactId: yourProject
version: 0.0.0
package: com.yoursite.yourProject
description: This project does some stuff and some things, but does not like spam.
developer_email: spam@nospam.spam
developer_id: username
developer_name: Your Actual Name
developer_url: https://github.com/wbuchanan
entryMethod: methodUsedByJavacallCommand
mainClass: ClassUsedByJavacallCommand
organization_name: Where you work
organization_url: Your work website
scm: https://github.com/username/yourProject.git
source: 1.8
target: 1.8
 Y: : y
[INFO] ----------------------------------------------------------------------------
[INFO] Using following parameters for creating project from Archetype: stata-archetype:0.0.0-SNAPSHOT
[INFO] ----------------------------------------------------------------------------
[INFO] Parameter: groupId, Value: com.yoursite
[INFO] Parameter: artifactId, Value: yourProject
[INFO] Parameter: version, Value: 0.0.0
[INFO] Parameter: package, Value: com.yoursite.yourProject
[INFO] Parameter: packageInPathFormat, Value: com/yoursite/yourProject
[INFO] Parameter: source, Value: 1.8
[INFO] Parameter: developer_url, Value: https://github.com/wbuchanan
[INFO] Parameter: entryMethod, Value: methodUsedByJavacallCommand
[INFO] Parameter: developer_email, Value: spam@nospam.spam
[INFO] Parameter: groupId, Value: com.yoursite
[INFO] Parameter: mainClass, Value: ClassUsedByJavacallCommand
[INFO] Parameter: organization_url, Value: Your work website
[INFO] Parameter: target, Value: 1.8
[INFO] Parameter: organization_name, Value: Where you work
[INFO] Parameter: version, Value: 0.0.0
[INFO] Parameter: developer_id, Value: username
[INFO] Parameter: scm, Value: https://github.com/username/yourProject.git
[INFO] Parameter: developer_name, Value: Your Actual Name
[INFO] Parameter: package, Value: com.yoursite.yourProject
[INFO] Parameter: description, Value: This project does some stuff and some things, but does not like spam.
[INFO] Parameter: artifactId, Value: yourProject
[INFO] project created from Archetype in dir: /Users/billy/Desktop/Programs/Java/stataArchetype/example/yourProject
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 02:10 min
[INFO] Finished at: 2016-02-28T05:40:58-06:00
[INFO] Final Memory: 20M/527M
[INFO] ------------------------------------------------------------------------

```


## Additional information/Notes
All of the information below assumes that you have [downloaded](http://maven.apache.org/download.cgi) and [installed](http://maven.apache.org/install.html) [Apache Maven](http://maven.apache.org/index.html) on your operating system.  If you have difficulties installing [Maven](http://maven.apache.org/index.html), consult the links here.
If you are working on Stata 13, just be sure to adjust the file paths and version numbers in the examples below.

### OSX

If you're working on OSX installing the Jar so it can be exposed 
as a Maven dependency can be accomplished by opening the Terminal application 
and then entering:

```
mvn install:install-file \
    -Dfile="/Applications/Stata/ado/base/jar/stata-sfi.jar" \
    -DgroupId=com.stata \
    -DartifactId=sfi \
    -Dversion=14 \
    -Dpackaging=jar
    
```
    
### Windoze
Things aren't too different on Windoze with the exception of the location of the default installation path for Stata:

```
mvn install:install-file \
    -Dfile="C:/Program Files (x86)/Stata14/ado/base/jar/stata-sfi.jar" \
    -DgroupId=com.stata \
    -DartifactId=sfi \
    -Dversion=14 \
    -Dpackaging=jar
    
```