hsh = { "Abba" => ["dancing wueen", "abba song"],
    "keane" => ["crystal ball", "christabel"]
}


hsh.each do |k, v|
    puts k + "--" + v.join(", ")
end
