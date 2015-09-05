[Productivity Hack] Working with Local and Remote Files
=======================================================

You often need to share files between local and remote hosts, read/browse files on a remote host, or upload and download files. The following hacks will make these tasks easier: 


#### Setting up a HTTP Server to Quickly Serve Files from Any Directory: 

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
