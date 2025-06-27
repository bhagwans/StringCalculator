class Calculator

    def self.add(string_numbers)
        return 0 if string_numbers == ""
        return 1 if string_numbers == "1"

        #//;\n1;2

        if string_numbers.start_with?("//")
            prefix, numbers = string_numbers.split("\n")
            delimiter = prefix[2]
            numbers = string_numbers.split("#{delimiter}")
        else
            numbers = string_numbers.split(/,|\n/)
        end

        numbers = numbers.map(&:to_i)
        negative_numbers = numbers.select {|n| n < 0}

        return "negative numbers not allowed #{negative_numbers.join(",")}" unless negative_numbers.empty?
        numbers.sum()
    end

end