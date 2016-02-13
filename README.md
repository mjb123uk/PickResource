----------------------------
Extra: PickResource
----------------------------
Version: 1.0.1
Since: June 2015
Author: Mike Barton <mike@mjb123.uk>
License: GNU GPLv2 (or later at your option)

About

A resource selection custom template variable field type for MODX Revolution (2.3+).

Use as an alternative to the 'Resource List'  TV field type, especially useful for large websites with lots of internal links.

WARNING - Only use pickresource when creating a new TV, if you replace an existing TV with a field type of 'Resource List' then you will need to reset all the links that have been defined with that TV.

 
Features

This MODX Revolution custom TV displays a text field (readonly) with the selected resource 'Name (id)' together with options to either 'Delete' or 'Choose' a resource.

Use 'Delete' to clear any previously selected resource.

Use 'Choose' to open a pop-up dialog which lists the site resources (matching defined criteria) in a treelist for selection.

The treelist nodes expand on demand and list sub-resources (subject to any defined exclusions).

 
Installation

MODX Package Management.

Following installation, simply create a new TV with the input type & output type set to pickresource. Define any required input options / filters and then use in any resource template or part of a MIGX TV. 


Input Options

The following input options could be set in template variable settings.

Default Value - The default value this TV will have if none is specified. e.g. Home (1).
Root Resource ID - The id of the resource to use as the root of the treelist (default 0).
Exclude Ids - A list of ids to exclude from treelist (separate with comma's).
	 
The 'Default Value' must be of the format 'Name (Id)'.

 
Output Options

If you use the included output format then just the resource id is returned rather than resource 'Name (Id)'.

 
Notes

This has been tested with the MIGX multi-field TV, it maintains unique variables to ensure there is no conflict if used multiple times within a resource document.

This is my first experiment with Extjs, please feel free to suggest any changes by email to mike@mjb123.uk.

The tree loading relies on an ajax call to a getprdata.php routine in the assets/components/pickresource folder, which is created during installation.  If you use an different name/path then use will need to update the treeloader URL in core/components/pickresource/tv/input/tpl/pickresource.tpl.

Sorry for the lack of a lexicon file for text, I need to spend more time checking how to do this, any advice/examples welcome. As an alternative you could change the text prompts to small icon images.

This has not been tested with different Contexts, if this causes a problem, then apologies but I am still a newbie to MODX.

For future changes or additional documentation please refer to http://www.mjb123.uk/pickresource.html


Mike Barton (June 2015)
