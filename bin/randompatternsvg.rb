#!/usr/bin/env ruby

require 'geo_pattern';

# generate random string

rcount=Random.new.rand(100);
letters=(('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a);
rstring="";
while rcount>0 
    rstring<<letters[Random.new.rand(letters.length)].to_s;
    rcount-=1;
end

# generate pattern from random string

puts GeoPattern.generate(rstring).to_svg;
