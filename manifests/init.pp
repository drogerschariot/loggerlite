# Class: loggerlite
#
#
class loggerlite(
	$loggerlite_ext = $loggerlite::params::loggerlite_ext,
	$provider = $loggerlite::params::provider,
	$version = $loggerlite::params::version,
	$package_dir = $loggerlite::params::package_dir,
	$owner = $loggerlite::params::owner,
	$group = $loggerlite::params::group,
	$install_options = $loggerlite::params::install_options,
	) inherits loggerlite::params {

	file { $package_dir:
		ensure 		=> directory,
		owner		=> $owner,
		group 		=> $group,
		mode 		=> 775,
	}

	file { "${package_dir}/LoggerLite${version}${loggerlite_ext}":
		ensure 		=> present,
		source		=> "puppet:///modules/loggerlite/LoggerLite${version}${loggerlite_ext}",
		owner		=> $owner,
		require		=> File[ $package_dir ],
		group 		=> $group,
		mode 		=> 775,

	}

	package { "Logger Lite 1.6.1":
		ensure 			=> installed,
		provider		=> $provider,
		source			=> "${package_dir}/LoggerLite${version}${loggerlite_ext}",
		install_options	=> $install_options,
		require			=> File[ "${package_dir}/LoggerLite${version}${loggerlite_ext}" ],
	}
	
}