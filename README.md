# The Dada Engine  Release 1.01

The Dada Engine is a system for the nondeterministic generation
of ASCII data from grammars using recursive transition networks; or,
in English, it is a system for generating random text using rules.
Rules are specified in a language named pb, which looks a little like
yacc, only a good deal more bogus.  The language is documented in the
Dada Engine manual which is supplied in Texinfo and PostScript formats.

Release 1.01 is a bugfix release which fixes a problem with regular
expression substitutions in 1.0.  Nothing else is changed.

# Compiling and installing

Firstly, run the shell script named `configure` in the Dada Engine
distribution directory.  This will check the characteristics of your
system and (hopefully) set up the makefiles and headers in a way that
will work.  configure, by default, sets the installation directories
in which the Dada Engine will be installed to `/usr/local`; if you
wish to install the Dada Engine elsewhere, you can specify a different
location by running configure with the `--prefix=pathname` argument,
i.e., `./configure --prefix=$HOME` will install the system in your
home directory.

Then run `make` in the distribution directory; this will compile the
Dada Engine.  Afterwards, for it to properly work, you must install it
by running `make install`.

# Sample scripts

Several sample scripts are provided in the `scripts` subdirectory.
These include:

<table>
	<tr>
	<td>brag.pb*</td><td>A SubGenius brag generator</td>
	</tr>
	<tr>
	<td>crackpot.pb</td><td>A crackpot rant generator</td>
	</tr>
	<tr>
	<td>eqn.pb</td><td>A generator of bogus equations (in LaTeX format)</td>
	</tr>
	<tr>
	<td>exam.pb</td><td>script to generate intimidating-looking but bogus
			examination questions.  (unfinished)</td>
	</tr>
	<tr>
	<td>legal.pb*</td><td>A script to generate legalese.</td>
	</tr>
	<tr>
	<td>loop.pb*</td><td>A script that produces itself as output</td>
	</tr>
	<tr>
	<td>manifesto.pb</td><td>A manifesto generator</td>
	</tr>
	<tr>
	<td>pomo.pb</td><td>The Postmodernism Generator; now outputs in any
			format supported by the format library</td>
	</tr>
	<tr>
	<td>silly-word.pb</td><td>A silly word generator</td>
	</tr>
	<tr>
	<td>spout.pb*</td><td>The SubGenius Profunditied Generation Matrix</td>
	</tr>
</table>

The PB language is described [here](doc/dada.html).

# Acknowledgements

I am grateful to Mitchell Porter for testing the language and coding
several of the example scripts, to the Department of Computer Science
at Monash University for facilities and support, to Jamie Cameron for
his part in the conspiracy to develop this system and to Brandon Long
and Kristin Buxton for their help with getting the Dada Engine to work
with Solaris 2.x.

Andrew C. Bulhak<br>
acb@dev.null.org<br>
45 Discord 3162<br>
