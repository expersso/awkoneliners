#!/usr/bin/awk -f

BEGIN { FS="\n"; RS="\n\n"; ORS="\n\n"}

/(^ #)|(^ awk)/ { 
	printf("<title>\nAWK One liner: %s\n</title>\n<link>\nhttp://www.gnu.org/software/gawk/manual\n</link>\n<description>\n%s\n</description>\n<guid>\n%s\n</guid>\n", NR, $0, NR) 
	}
