# Class: loggerlitePack
#
class loggerlite::uninstall inherits loggerlite {

	require loggerlite::params

	case $osfamily {
		"Darwin": {
			file { "/Applications/Logger Lite":
				ensure 	=> absent,
				force	=> true,
				recurse => true
			}
			file { "/var/db/.puppet_pkgdmg_installed_loggerlite":
				ensure 	=> absent,
			}

		}
		"Windows": {
			Package[ "Logger Lite 1.6.1" ]{
				ensure		=> absent,
			}
		}
		default: {
			fail("Unknown OS!")
		}
	}
}