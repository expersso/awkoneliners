#!/usr/bin/awk -f
#
# One liners due to http://www.student.northpark.edu/pemente/awk/awk1line.txt

# Print boilerplate header
BEGIN { FS="\n"; RS="\n\n"; ORS="\n\n"
	printf "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<rss version=\"2.0\">\n<channel>\n<title>AWK one-liners</title>\n<link>http://www.gnu.org/software/gawk/manual</link>\n<description>RSS feed for @awkoneliners</description>\n\n"
}

# Parse one liners, filter out > 140 characters, surround with tags
/(^ #)|(^ awk)/ { 
	if(length($0) <= 140)
		printf("<item>\n<title>AWK One liner: %s</title>\n<link></link>\n<description>\n%s\n</description>\n<guid>%s</guid>\n</item>\n\n",
			NR, $0, NR) 
	}

# Close channel and rss tags
END { print "</channel>", "\n","</rss>" }
