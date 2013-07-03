loggerlite
----------

Puppet module to install (Vernier Logger Lite)[http://www.vernier.com/products/software/logger-lite/] on Windows and OSX.

###Requirements
- Puppet 

###Install
1. Clone repo to your modules directory either on a puppetmaster or puppet client.

###Usage
You can edit the params.pp file to change any paramitors and 
<pre>
<code>include loggerlite</code>
</pre>

or you can define the paramiters in the class definition

<pre>
<code>
class { "loggerlite":
   version = "1.6.1",
   asdfasdf
}
</code>
</pre>
