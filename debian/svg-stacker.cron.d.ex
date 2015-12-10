#
# Regular cron jobs for the svg-stacker package
#
0 4	* * *	root	[ -x /usr/bin/svg-stacker_maintenance ] && /usr/bin/svg-stacker_maintenance
