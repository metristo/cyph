
def cyph(phrase, shift)
    phrase.map! do |ltr|
        if ltr.between?(65, 90)
             if (ltr + shift) >= 90
                (ltr + shift) - 26
            else ltr + shift
            end
        elsif ltr.between?(97, 122)
            if (ltr + shift) >= 122
                (ltr + shift) - 26
            else (ltr + shift)
            end
        else
            ltr = ltr
        end
    end
p "last step"
end


puts "Enter a phrase to be encrypted."
phrase = gets.strip.to_s.bytes

puts "And what would you like your encryption key to be? (just pick a number)"
shift = gets.strip.to_i

cyph(phrase, shift)

phrase.map! do |ltr|
    ltr.chr

end
p "Your encrypted phrase is #{phrase.join('')}!"