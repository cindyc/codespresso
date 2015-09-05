function wiki_search() {
    lynx --accept-all-cookies -underline_links "https://en.wikipedia.org/wiki/Special:Search/${*}" -nolist
}

function google_search() {
    lynx --accept-all-cookies-underline_links "http://www.google.com/search?q=${*}" -nolist
}

wiki_search $@
