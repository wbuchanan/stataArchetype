********************************************************************************
*                                                                              *
* Description -                                                                *
*   Stata interface to the Stata Maven Archetype.  This will build a templated *
*   .ado & .sthlp files along with the requisite Java directory structure to   *
*   speed up development of Java plugins for Stata.                            *
*                                                                              *
* System Requirements -                                                        *
*   JRE 1.8 or Higher                                                          *
*   Maven 2 or Higher                                                          *
*                                                                              *
* Output - (Optional)                                            			   *
*   Generates the Stata executable and help file that will point at the Java   *
*   plugin that the end user is developing.  This should shorten development   *
*   time marginally by generating templated files and directory structures     * 
*   that would be used to write both the Java and Stata code.                  *
*                                                                              *
* Lines -                                                                      *
* 	185	                                                                       *
*                                                                              *
********************************************************************************

*! archetype
*! 26JUL2017
*! v 0.0.2

// Drops the program from memory if already loaded
cap prog drop archetype

// Defines the archetype program
prog def archetype

	// Defines the minimum version number required to use this program
	version 13.0

	// Defines the calling syntax...this mapps the underlying parameters for the 
	// maven archetype
	syntax ,  GRoupid(string asis) ARTifactid(string asis) 					 ///   
			  VERsionnum(string asis) PACKage(string asis) 					 ///
			  MAINClass(string asis) JAVACALLMethod(string asis)			 ///  
			  BUILDDirectory(string asis) [ GITinit							 ///   
			  SOUrce(string asis) TARget(string asis)						 ///   
			  DESCription(string asis) DEVeloperid(string asis)				 ///   
			  SCM(string asis) ORGName(string asis) ORGUrl(string asis)		 ///   
			  DEVName(string asis) DEVUrl(string asis) DEVEmail(string asis) ///   
			  STVersion(string asis) DEBug ]
			  
	// Store user's home directory incase we need to substitute it
	loc home `"`: env HOME'"'
	
	// Will substitute the HOME directory for the user if necessary
	loc builddirectory `"`: subinstr loc builddirectory "~" "`home'"'"'
			  
	// Creates default text to use for the description parameter	  
	loc defaultDescription "Enter project description here"		  
			  
	// Creates default text to use for the source control management parameter
	loc defaultScm "Enter source code repository here"
			  
	// Creates default text to use for the organiation name parameter	  
	loc defaultOrgName "Enter institutional affiliation here"
			  
	// Creates default text to use for the organization website parameter
	loc defaultOrgUrl "Enter institution website here"
			  
	// Creates default text to use for the developer website parameter
	loc defaultDevUrl "Enter your personal/developer website here"
			  
	// Creates default text to use for the developer email parameter
	loc defaultDevEmail "NoSpam@IDontLikeSpam.Spam"
	
	// Substitutes string to initialize a git repository prior to creating the 
	// project in the build directory
	if `"`gitinit'"' != "" loc gitinit "git init . &&"
	
	// Parameter to turn on the debug mode for the maven archetype CLI tool
	if `"`debug'"' != "" loc debug "-X"		  
			  
	// Formats the groupId parameter		  
	loc groupid `"-DgroupId="`groupid'""'

	// Formats the artifactId parameter
	loc artifactid `"-DartifactId="`artifactid'""'

	// Formats the version number parameter
	loc versionnum `"-Dversion="`versionnum'""'

	// Formats the package name parameter
	loc package `"-Dpackage="`package'""'

	// Formats the main class parameter
	loc mainclass `"-DmainClass="`mainclass'""'

	// Formats the method that will be called by javacall for the plugin
	loc javacallmethod `"-DentryMethod="`javacallmethod'""'
	
	// Sets the default JVM to Java 8 if nothing else specified for the source code
	if `"`source'"' == "" loc source `"-Dsource="1.8""'
	
	// Or use the user-supplied value
	else loc source `"-Dsource="`source'""'
	
	// Sets the default JVM to Java 8 if nothing else specified for compilation
	if `"`target'"' == "" loc target `"-Dtarget="1.8""'
	
	// Or use the user-supplied value
	else loc target `"-Dtarget="`target'""'

	// Sets the default developer name to the computer's user name system variable
	if `"`devname'"' == "" loc devname `"-Ddeveloper_name="`c(username)'""'
	
	// Or use the user-supplied value
	else loc devname `"-Ddeveloper_name="`devname'""'

	// Sets the default developer ID to the computer's user name system variable
	if `"`developerid'"' == "" loc developerid `"-Ddeveloper_id="`c(username)'""'
	
	// Or use the user-supplied value
	else loc developerid `"-Ddeveloper_id="`developerid'""'

	// Sets the default description parameter value if not specified
	if `"`description'"' == "" loc description `"-Ddescription="`defaultDescription'""'
	
	// Or use the user-supplied value
	else loc description `"-Ddescription="`description'""'
	
	// Sets the default source control management parameter value if not specified
	if `"`scm'"' == "" loc scm `"-Dscm="`defaultScm'""'
	
	// Or use the user-supplied value
	else loc scm `"-Dscm="`scm'""'

	// Sets the default institutional affiliation if not specified
	if `"`orgname'"' == "" loc orgname `"-Dorganization_name="`defaultOrgName'""'
	
	// Or use the user-supplied value
	else loc orgname `"-Dorganization_name="`orgname'""'

	// Sets the default institution website if not specified
	if `"`orgurl'"' == "" loc orgurl `"-Dorganization_url="`defaultOrgUrl'""'
	
	// Or use the user-supplied value
	else loc orgurl `"-Dorganization_url="`orgurl'""'

	// Specifies the default developer URL if not specified
	if `"`devurl'"' == "" loc devurl `"-Ddeveloper_url="`defaultDevUrl'""'
	
	// Or use the user-supplied value
	else loc devurl `"-Ddeveloper_url="`devurl'""'
	
	// Specifies a default developer email if not specified
	if `"`devemail'"' == "" loc devemail `"-Ddeveloper_email="`defaultDevEmail'""'
	
	// Or use the user-supplied value
	else loc devemail `"-Ddeveloper_email="`devemail'""'
	
	// Specifies a default Stata version if not specified
	if `"`stversion'"' == "" loc stversion `"-Dstata_version="`= int(`c(stata_version)')'""'
	
	// Or use the user-supplied value
	else loc stversion `"-Dstata_version="`stversion'""'
	
	// Sets the archetype groupId value
	loc archetypegroup "-DarchetypeGroupId=org.paces-consulting"

	// Sets the archetype artifactId value
	loc archetypeartifact "-DarchetypeArtifactId=stata-archetype"

	// Sets the archetype version value
	loc archetypeversion "-DarchetypeVersion=0.0.0-SNAPSHOT"
	
	// Will try to make the directory for the build
	mkdir `"`builddirectory'"'
	
	// Moves to the build directory, optionally initializes a git repository, 
	// and then builds the project using the maven template
	! cd "`builddirectory'" && `gitinit'									 ///   
	mvn archetype:generate -B `archetypegroup' `archetypeartifact'  		 ///   
	`archetypeversion' `groupid' `artifactid' `versionnum' `package' 		 ///   
	`mainclass' `javacallmethod' `source' `target' `devname' `developerid'   ///   
	`description' `scm' `orgname' `orgurl' `devurl' `devemail' `stversion'	 ///   
	`debug'

// End of program definition	
end 
 

