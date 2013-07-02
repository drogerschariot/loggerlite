# Class: loggerlitePack
#
class loggerlite::uninstall {
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
			# code
		}
		default: {
			fail("Unknown OS!")
		}
	}
}