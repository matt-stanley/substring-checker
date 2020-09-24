Substring Project for The Odin Project.

The goal is to create a method which takes two arguments: a string and an array of strings (dictionary). It will return a hash whose keys are strings from the dictionary with one or more matches in the first argument. The value of each key will be the number of matches found for each key.

For example, method("fun function maker", ["fun", "make"]) would return {"fun" => 2, "make" => 1}.

I used the #scan method of String to extract words without ending punctuation (thanks, Sawa on Stack Overflow). I iterated through the dictionary, stopping to iterate through each word in the provided string. I tested whether the lowercase version of that word includes the provided dictionary entry, using the #include? method.

If so, the corresponding hash key gets incremented. I did learn that, without a default value, you could not add 1 the first time. nil + 1 = error. So, the hash is initialised with Hash.new(0). This saves typing and computing time, not needing to check if the key already exists.

Pretty cool project!