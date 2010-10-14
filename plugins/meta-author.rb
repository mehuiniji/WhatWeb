##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Meta-Author" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-10-14
version "0.1"
description "This plugin retrieves the author name from the meta name tag - info: http://www.webmarketingnow.com/tips/meta-tags-uncovered.html#author"

examples %w|
htmlhelp.com
www.codeproject.com
www.webmarketingnow.com
|

matches [

# Get author's name
{ :version=>/<meta[^name]+name[\s]*=[\s]*[\'|\"]?author[^content]+content[\s]*=[\s]*[\'|\"]?([^\'^\"\/^>]+)/i, :version_regexp_offset=>0 },
{ :version=>/<meta[^content]+content[\s]*=[\s]*[\'|\"]?([^\"^\']+)[^name]+name[\s]*=[\s]*[\'|\"]?author/i, :version_regexp_offset=>0 },

]

end

