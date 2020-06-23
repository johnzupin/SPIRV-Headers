#
# Regular cron jobs for the spirv-headers package
#
0 4	* * *	root	[ -x /usr/bin/spirv-headers_maintenance ] && /usr/bin/spirv-headers_maintenance
