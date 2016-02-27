# Stata Archetype
This repository defines a [Maven Archetype](http://maven.apache.org/archetype/index.html) for developing Java plugins for Stata.  It is fairly barebones and defines a Maven dependency for the Jar that has the Java API classes and methods.  It also defines an example `.ado` and `.sthlp` file that can be used to define the Stata wrapper that would call the plugin.  Both of the boilerplate Stata files contain commented advise/formatting for those who are less experienced programming in Stata as well.

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