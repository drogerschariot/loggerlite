# Class: loggerlite
#
#
class loggerlite(
	$loggerlite_pkg = "loggerlite::params::loggerlite_pkg",
	$provider = loggerlite::params::loggerlite_pkg
	) {

	package { "loggerlite":
		ensure 		=> installed,
		provider	=> $provider,
		source		=> 'puppet:///modules/loggerlite/LoggerLite161${$loggerlite_pkg}',
	}
	
}