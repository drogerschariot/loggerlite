# Class: loggerlit

#
class loggerlite::params {
	case $osfamily {
			"Darwin": {
				$loggerlite_pkg = '.dmg'
				$provider = 'pkgdmg'
			}
			"Windows": {
				$loggerlite_pkg = '.exe'
				$provider = 'windows'
			}
			default: {
				fail("Unknown OS!")
			}
		}	


}