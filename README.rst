owl:Thing's for the ACS RDF symposium 
-------------------------------------

Homepage: http://egonw.github.com/acsrdf2010/

Want to contribute something to the homepage, or add additional RDFa?
Just fork the repository, make the hacks, and send around a pull request.
Make sure to take the gh_pages branch.

Option 1
--------

From the command line, your workflow could look like:

    $ git clone git://github.com/egonw/acsrdf2010.git
    $ git checkout gh_pages origin/gh_pages

Then add the RDFa to your abstract:

    $ nano index.html

Make sure to validate the new index.html with the following two sites:

 * http://validator.w3.org/check
 * http://www.w3.org/2007/08/pyRdfa/

Both support copy/pasting the index.html content directly into the form,
and neither depends the index.html to be online available.

Then you can send me patches:

    $ git format-patch origin/gh_pages

Option 2
--------

Set up a fork on GitHub, make the changes, push them back onto your
GitHub Fork, and send me a pull request. See these two tutorials:

 * http://help.github.com/forking/
 * http://github.com/guides/pull-requests

Egon
