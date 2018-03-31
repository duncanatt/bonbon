# Creating the Repository #

Custom beamer templates (styles) should ideally be placed in a central place, so that all LaTeX documents in the system refer to the same template. This is advantageous since it requires us only to maintain a single instance of the template code, in case changes are required.

The argument of `\usepackage` is a name not a file path. The fact that it sometimes works at all when passed a relative file path is just due to lack of error checking by the system. If the package does declare itself using `\ProvidesPackage` the use of such paths will generate a warning that the name is incorrect.

The best thing is to put the style files in the directory:

`~/texmf/tex/latex/mystyles/`

where LaTeX will always look for packages, without the need to specify relative paths. Use

`~/Library/texmf/tex/latex/mystyles/`

if you're running MacTeX on Mac OS X. If the directory structure does not exist, create it. You can also decide to put symbolic links in that special place, so you don't need to maintain files in different places.

# Creating Links #

Symbolic links are created as follows:

`ln -s /path/to/original /path/to/symlink` (_e.g._ ln -s bonbon /Users/duncan/Dropbox/PhD/Teaching/bonbon)
