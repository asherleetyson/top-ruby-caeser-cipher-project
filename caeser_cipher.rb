def caeser_cipher (string, shift)
    #empty arrays for use in loops below
    ord_array = []
    cipher_ord_array = []
    cipher_array = []

    #convert string to downcase and an array of strings
    string_array = string.downcase.chars

    #create array of string ordinals
    for i in string_array
        ord_array.push(i.ord)
    end

    for i in ord_array
        if i < 97 || i > 122
        cipher_ord_array.push(i)
        elsif i + shift > 122
            x = i + shift
            y = x - 122
            cipher_ord_array.push (96 + y)
        else cipher_ord_array.push(i + shift)
        end
    end

    for i in cipher_ord_array
        cipher_array.push(i.chr)
    end

    puts "your string is '#{string}"
    puts "which gets turned into an array: #{string_array}"
    puts "which is turned into ordinal numbers: #{ord_array}"
    puts "and then shifted based on your number #{cipher_ord_array}"
    puts "and finally turned back into a new cipher string #{cipher_array}"
    puts "the final encrypted message is '#{cipher_array.join('')}'"

end

caeser_cipher("What a string!", 5)