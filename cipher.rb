def caesar_cipher(str, shift)
    str_arr = []
    ascii_arr = []
    arr = []

    str_arr = str.chars  #chars modifies our str into an array of individual strings

    str_arr.each do |letter|
        letter.ord #ord changes each letter of our array into ascii code
        if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
            ascii_arr << letter.ord
        else
            ascii_arr << letter
        end
    end
    
    ascii_arr.each do |num|
        if num.is_a? Integer
            if num.between?(65, 90)
                new_num = (num - 65 + shift) % 26 + 65
                arr.push(new_num.chr)
            else
                new_num = (num - 97 + shift) % 26 + 97
                arr.push(new_num.chr)
            end
        else
            arr.push(num)        
        end
    end
    arr.join("")
end 
p caesar_cipher("What a string!", 5)