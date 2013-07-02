# Class: loggerlite
#
#
class loggerlite(
	$loggerlite_ext = $loggerlite::params::loggerlite_ext,
	$provider = $loggerlite::params::provider,
	$version = $loggerlite::params::version,
	$package_dir = $loggerlite::params::package_dir,
	$owner = $loggerlite::params::owner,
	) inherits loggerlite::params {

	file { $package_dir:
		ensure 		=> directory,
		owner		=> $owner,
	}

	file { "${package_dir}/LoggerLite${version}${loggerlite_ext}":
		ensure 		=> present,
		source		=> "puppet:///modules/loggerlite/LoggerLite${version}${loggerlite_ext}",
		owner		=> $owner,
		require		=> File[ $package_dir ],

	}

	package { "loggerlite":
		ensure 		=> installed,
		provider	=> $provider,
		source		=> "${package_dir}/LoggerLite${version}${loggerlite_ext}",
		require		=> File[ "${package_dir}/LoggerLite${version}${loggerlite_ext}" ],
	}
	
}