loggerlite
----------

Puppet module to install [Vernier Logger Lite 1.6.1](http://www.vernier.com/products/software/logger-lite/) on Windows and OSX.

###Requirements
- Puppet 

###Install
- Clone repo to your modules directory either on a puppetmaster or puppet client.

###Usage
You can edit the params.pp file to change any parameters and:
<pre>
<code>include loggerlite</code>
</pre>

or you can define the parameters in the class definition

<pre>
<code>
class { "loggerlite":
   version = "1.6.1",
   loggerlite_ext => '.dmg'
   provider => 'pkgdmg'
   package_dir => '/puppet_pkg'
   owner	=> "root"
   group => 'wheel'
   install_options => undef
}
</code>
</pre>
