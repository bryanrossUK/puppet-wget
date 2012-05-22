################################################################################
# Definition: wget::fetch
#
# This class will download files from the internet.  You may define a web proxy
# using $http_proxy if necessary.
#
################################################################################
define wget::fetch($source,$destination) {
  if $::http_proxy {
    exec { "wget-$name":
      command     => "/usr/bin/wget --output-document=$destination $source",
      creates     => $destination,
      environment => [ "HTTP_PROXY=$::http_proxy", "http_proxy=$::http_proxy" ],
    }
        } else {
    exec { "wget-$name":
      command => "/usr/bin/wget --output-document=$destination $source",
      creates => $destination,
    }
  }
}
