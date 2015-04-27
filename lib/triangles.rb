class Triangle

    define_method(:initialize) do |side1, side2, side3|
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end

    define_method(:not_tri) do
        if @side1.+(@side2) < @side3 || @side1.+(@side3) < @side2 || @side2.+(@side3) < @side1
            return "Not a Triangle"
        end
    end

    define_method(:tri_eq) do
        @side1 == @side2 && @side1 == @side3
            return "Equilateral"
    end

    define_method(:tri_iso) do
        if not_tri == "Not a Triangle"
            return "Not a Triangle"
        else
            @side1 == @side2 || @side1 == @side3 || @side2 == @side3
            return "Isosceles"
        end
    end

    define_method(:tri_sca) do
        if not_tri == "Not a Triangle"
            return "Not a Triangle"
        else
            @side1 != @side2 && @side1 != @side3 && @side2 != @side3
            return "Scalene"
        end
    end





end
