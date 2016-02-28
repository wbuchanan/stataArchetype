{smcl}
{* *! version 0.0.1 DATEHERE}{...}
{cmd:help ${entryMethod}}
{hline}

{marker ${entryMethod}}{p 2 2 2}{title:${entryMethod}}{p_end}

{p 4 4 4}{hi:${entryMethod} {hline 2}} Describe your program here. {p_end}

{marker syntax}{p 2 2 2}{title:Syntax}{p_end}

{p 4 4 4}{cmd:${entryMethod}} [{varlist}] [{it:namelist}] [{it:anything}]
[{it:using}] [{it:exp}] [{weight}] [{ifin}] [, {cmdab:opt:on} {cmd:optoff}
{cmdab:int:opt(}{it:integer}{opt )} {cmdab:real:opt(}{it:real}{opt )}
{cmdab:confidencei:nterval(}{it:real}{opt )} {cmdab:crediblei:nterval(}{it:real}{opt )}
{cmdab:numlist:opt(}{it:optional info about parameter}{opt )}
{cmdab:varlist:opt(}{it:optional info about parameter}{opt )}
{cmdab:namelist:opt(}{it:optional info about parameter}{opt )}
{cmdab:string:opt(}{it:string value}{opt )}
{cmdab:passthru:opt(}{it:argument passed to other command}{opt )}]


{marker opts}{p 2 2 2}{title:Options}{p_end}

{p 4 4 8}{cmdab:opt:on} what does this option turn on in the command {p_end}
{p 4 4 8}{cmd:optoff} what does this option turn off in the command {p_end}
{p 4 4 8}{cmdab:int:opt} what types of integer values are valid?  What
do different values of the integer do to the performance of the command? {p_end}
{p 4 4 8}{cmdab:real:opt} what real numbers are valid?  How do different
values affect what the program does? {p_end}
{p 4 4 8}{cmdab:confidencei:nterval} defines the confidence intervals to
be returned from the command. {p_end}
{p 4 4 8}{cmdab:crediblei:nterval} defines the credible intervals to be
returned from this command. {p_end}
{p 4 4 8}{cmdab:numlist:opt} What values are valid?  How many numbers can be
passed?  How few numbers need to be passed?  What do these numbers do to the
performance of the command? {p_end}
{p 4 4 8}{cmdab:varlist:opt} What types of variables can be passed?  Are
factor variable supported?  Are time series variables supported?  How
many variables can be passed?  How few need to be passed?  How does this
affect the performance of the command? {p_end}
{p 4 4 8}{cmdab:namelist:opt} How many names can be passed?  Do the names
need to refer to anything specific?  How few names need to be passed?  {p_end}
{p 4 4 8}{cmdab:string:opt} Are there specific string values that are
valid?  How is the string value used?  Are there any length limitations?{p_end}
{p 4 4 8}{cmdab:passthru:opt} would be a good idea to use {help } to
point this to the command to which this option is passed thru to.{p_end}

{marker examples}{p 2 2 2}{title:Examples}{p_end}

{p 4 4 4}Text explaining the example that follows. {p_end}

{p 8 8 12}{stata ${entryMethod}:${entryMethod}}{p_end}

{marker refs}{p 2 2 2}{title:References}{p_end}

{p 2 2 2}Book{p_end}
{phang}Last, F. M., & Last, F. M. (YYYY).  {it:Book Title}. City, State: Publisher.{p_end}

{p 2 2 2}Article{p_end}
{phang}Last, F. M., & Last, F. M. (YYYY). title. {it:Journal, Volume(Number),} pp # - #.{p_end}

{marker issues}{p 2 2 2}{title:Issues, Bugs, and Enhancement Requests}{p_end}

{p 4 4 4}Please submit any issues, bugs, and future enhancement requests to
the project respository: {p_end}

{p 12 12 12}{browse ${scm}/issues}{p_end}

{marker author}{p 2 2 2}{title:Author}{p_end}
{p 4 4 4}${developer_name}{p_end}
{p 4 4 4}${organization_name}{p_end}
{p 4 4 4}${developer_email}{p_end}

