Command Line Shortcuts: 
=======================


Google from the Command Line: 
-----------------------------

Add this to your .bash_profile:  

```bash
function google() { open /Applications/Google\ Chrome.app/ "http://www.google.com/search?q= ${*}"; }
```

```
source ~/.bash_profile
```

Try it: 

```bash
google btree
google 'vim plugin for evernote'
```

Using Text-Based Browsers
-------------------------

If you like text-based browser like I do, you can use the following scripts to search with [http://lynx.isc.org/lynx2.8.7/index.html](Lynx) 

First do 'brew install lynx' to install lynx 

Then add the following to your ~/.bash_profile: 

	function lgoogle() {
		lynx --accept-all-cookies -underline_links "http://www.google.com/search?q=${*}"
	}

```bash
lgoogle nytimes
lgoogle "text based browser"
```

Use Up and Down arrow keys to navigate the page, and the Left and Right arrow keys to navigate browsing history.
Type 'q' + Enter to exit Lynx.


To get a page or search result displayed without getting into interactive mode, add '-dump' option to the lynx command. To skip displaying all the referenced links, add '-nolist' option. 
For example, the following displays the wiki page of your search term (or the disambiguation page if there are multiple matches): 

	function wiki() {
		lynx --accept-all-cookies -underline_links "https://en.wikipedia.org/wiki/Special:Search/${*}" -nolist -dump
	}

```bash
wiki "Lynx_(web_browser)"
wiki lynx # displays the disambiguation page
```
