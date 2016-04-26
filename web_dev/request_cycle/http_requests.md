2. What are some common HTTP status codes?

First of HTTP Status Codes fall into certain categories: Informational, Success, Redirection, Client Error, Server Error, and Unofficial.

Informational:
100 Continue: Server has received the request headers and the client should proceed to send the request body.
101 Switching Protocols: The requestor has asked the server to switch protocols and the server has agreed to do so. 
102 Processing: A WebDAV reuest may contain many sub-requests involving file operations, requiring a long time to complete the request; indicates the server has received and is processing the request but no response is available yet.

Success:
200 OK: Standard response for successful HTTP requests.
201 Created: The request has been fulfilled, resulting in the creation of a new resource.
202 Accepted: The request has been accepted for processing, but the processing has not been completed. The request might or might not be eventually acted upon, and may be disallowed when processing occurs. 
203 Non-Authoritative Information: The server is a transforming proxy (e.g. a Web accelerator) that received a 200 OK from its origin, but is returning a modified version of the origin's response.
204 No Content: The server successfully processed the request and is not returning any content.
205 Reset Content: The server successfully processed the request, but is not returning any content. Unlike a 204 response, this response requires that the requester reset the document view.
206 Partial Content: The server is delivering only part of the resource (byte serving) due to a range header sent by the client. The range header is used by HTTP clients to enable resuming of interrupted downloads, or split a download into multiple simultaneous streams.
207 Multi-Status: The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.
208 Already Reported: The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again.
226 IM Used: The server has fulfilled a request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.

Redirection:
301 Moved Permanently: This and all future requests should be directed to the given URI.
302 Found: This is an example of industry practice contradicting the standard. The HTTP/1.0 specification (RFC 1945) required the client to perform a temporary redirect (the original describing phrase was "Moved Temporarily"),but popular browsers implemented 302 with the functionality of a 303 See Other. Therefore, HTTP/1.1 added status codes 303 and 307 to distinguish between the two behaviours.However, some Web applications and frameworks use the 302 status code as if it were the 303.
303 See Other: The response to the request can be found under another URI using a GET method. When received in response to a POST (or PUT/DELETE), the client should presume that the server has received the data and should issue a redirect with a separate GET message.

Client Error:
403 Forbidden: The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found: The requested resource could not be found but may be available in the future. Subsequent requests by the client are permissible.
451 Unavailable For Legal Reasons: A server operator has received a legal demand to deny access to a resource or to a set of resources that includes the requested resource. The code 451 was chosen as a reference to the novel Fahrenheit 451.

For Full List: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

# 3. What is the different between a GET request and a POST request? When might each be used?

GET requests data from a specified resource while POST submits data to be processed from a specified resource. 

GET requests:
-Can be cached
-Remain in the browswer history
-Can be bookmarked
-Should never be used when dealing with sensitive data
-Have length restrictions
-Should be used only to retrieve data
-Back button is harmless
-Encoding type: application/x-www-form-urlencoded
-Only ASCII characters allowed
-Data visible to all in URL

POST requests:
-Are never cached
-Do not remain in the browser history
-Cannot be bookmarked
-Requests have no restrictions on data length
-Back button will resubmit data
-Encoding type: application/x-www-form-urlencoded or multipart/form-data. Use multipart encoding for binary data
-No restrictions on data type; binary data also allowed
-Data not displayed in URL

Based on above differences, you might use a GET request to fetch a document whereas you might use a POST request to update the data on a document (making changes).

# 4. What is a cookie? How does it relate to HTTP requests?

A type of message that is given to a Web browser by a Web server. The main purpose of a cookie is to identify users and possibly prepare customized Web pages or to save site login information for you. It is usually stored in the user's web browser. When the website is loaded, the cookie is sent back. Can be used for authentication, tracking, or other purposes. 

This introduces state (memory of previous events) into otherwise stateless HTTP transactions. To set a cookie, you usee the HTTP Set-Cookie header, sent in an HTTP response. If cookies are disabled, it is ignored. Cookies have the following attributes: Name, Value, Domain, Path, Expiration, Max-Age, Secure and HTTP-Only.
