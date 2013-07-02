# Class: loggerlit

#
class loggerlite::params {

	$version = '161'
	case $osfamily {
			"Darwin": {
				$loggerlite_ext 	= '.dmg'
				$provider 			= 'pkgdmg'
				$package_dir 		= '/puppet_pkg'
				$owner				= "root"
				$group 				= 'wheel'
				$install_options	= undef
				
			}
			"Windows": {
				$loggerlite_ext = '.exe'
				$provider 		= 'windows'
				$package_dir 	= "C:\puppet_pkg"
				$owner			= "Administrator"
				$group 			= "Everyone"
				$install_options	= [ "/S", "/v/qn" ]
			}
			default: {
				fail("Unknown OS!")
			}
		}	


}