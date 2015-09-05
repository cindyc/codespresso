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
Go to http://localhost:8888/ and you will see your files. Anyone else can go to http://{your_ip_address}:8888 to download files.

Source: https://github.com/mbostock/d3/wiki



##### Browser Hacks: 

###### Google from command line: 

Add this to your .bashrc or .zshrc: 

function google() { open /Applications/Google\ Chrome.app/ "http://www.google.com/search?q= ${*:1}"; }

