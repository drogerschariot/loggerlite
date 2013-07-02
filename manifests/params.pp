# Class: loggerlit

#
class loggerlite::params {

	$version = '161'
	case $osfamily {
			"Darwin": {
				$loggerlite_ext = '.dmg'
				$provider 		= 'pkgdmg'
				$package_dir 	= '/puppet_pkg'
				$owner			= "root"
				
			}
			"Windows": {
				$loggerlite_ext = '.exe'
				$provider = 'windows'
				$package_dir = "C:\puppet_pkg"
				$owner			= "drogers"
			}
			default: {
				fail("Unknown OS!")
			}
		}	


}