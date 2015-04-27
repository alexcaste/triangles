class Triangle

    define_method(:initialize) do |side1, side2, side3|
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end

    define_method(:not_tri) do
        @side1.+(@side2) < @side3 || @side1.+(@side3) < @side2 || @side2.+(@side3) < @side1
    end

    define_method(:tri_eq) do
        @side1 == @side2 && @side1 == @side3
    end

    define_method(:tri_iso) do
            @side1 == @side2 || @side1 == @side3 || @side2 == @side3
    end

    define_method(:tri_sca) do
            @side1 != @side2 && @side1 != @side3 && @side2 != @side3
    end

    define_method(:results) do
        if not_tri()
            "Not a Triangle"
        elsif tri_eq()
            "Equilateral"
        elsif tri_iso()
            "Isosceles"
        else
            "Scalene"
        end
    end
end
