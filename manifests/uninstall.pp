# Class: loggerlitePack
#
class loggerlite::uninstall inherits loggerlite {

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
			Package[ "Logger Lite ${loggerlite::version}" ]{
				ensure	=> absent,
			}
		}
		default: {
			fail("Unknown OS!")
		}
	}
}