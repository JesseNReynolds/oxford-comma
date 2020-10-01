def oxford_comma(array)
    english = ""
    length = array.length

    if length == 1
        english << "#{array[0]}"
    end

    if length == 2
        english << "#{array[0]} and #{array[1]}"
    end

    array.each_with_index do |word, i|

        if i + 1 < length && length > 2
            english << "#{array[i]}, "
        end

        if i + 1  == length && length > 2
            english << "and #{array[i]}"
        end

    end

    return english
end
