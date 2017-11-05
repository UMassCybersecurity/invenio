def main
	`nmap #{ARGV[0]} -sV -sC --version-intensity 8 -A -oX output.xml -stylesheet stylesheet.xsl`
  `xsltproc output.xml -o output.html`
end

main
puts "Done."
