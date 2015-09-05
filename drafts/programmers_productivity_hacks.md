##### Working with Files:

###### You can set up a HTTP server quickly to serve files from any directory: 

```python 
# Python 2
python -m SimpleHTTPServer 8888 &

# Python 3+
python -m http.server 8888 &
```

PHP: 

```php
php -S localhost:8888
```
Ruby:
 
```ruby
ruby -run -e httpd . -p 8888
```

NodeJS: 

```node
npm install http-server -g
http-server
```

Java: 

```java
# Download jetty-runner from http://www.eclipse.org/jetty/documentation/current/runner.html
java -jar jetty-runner-9.3.0.M0.jar  --port 8888  .
```
Go to http://localhost:8888/ and you will see your files. And your files are available at http://{your_ip_address}:8888 for others to download (so remember to shutdown the server once your file sharing is done).

Source: https://github.com/mbostock/d3/wiki



##### Browser Hacks: 

###### Google from command line: 

Add this to your .bash_profile:  

```bash
function google() { open /Applications/Google\ Chrome.app/ "http://www.google.com/search?q= ${*}"; }
source ~/.bash_profile
```
Try it: 

```bash
google btree
google 'vim plugin for evernote'
```

If you like text-based browser like I do, you can use the following scripts to search with [http://lynx.isc.org/lynx2.8.7/index.html](Lynx) 

First do 'brew install lynx' to install lynx 

Then add the following to your ~/.bash_profile: 

```bash
function lgoogle() {
    lynx --accept-all-cookies -underline_links "http://www.google.com/search?q=${*}"
}
```

```bash
lgoogle nytimes
lgoogle "text based browser"
```

Type 'q' + Enter to exit Lynx.


To get a page or search result displayed without getting into interactive mode, add '-dump' option to the lynx command. To skip displaying all the referenced links, add '-nolist' option. 
For example, the following displays the wiki page of your search term (or the disambiguation page if there are multiple matches): 

```bash
function wiki() {
    lynx --accept-all-cookies -underline_links "https://en.wikipedia.org/wiki/Special:Search/${*}" -nolist -dump
}
```

```bash
wiki "Lynx_(web_browser)"
wiki lynx # displays the disambiguation page
```
