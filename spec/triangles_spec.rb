require('rspec')
require('pry')
require('triangles')

describe(Triangle) do
    describe("#tri_eq") do
        #it checks if all sides are equal
        it("returns true if side1, side2 & side3 are equal to each other") do
            triangle_test = Triangle.new(1, 1, 1)
            expect(triangle_test.tri_eq()).to(eq(true))
        end
    end

    describe("#tri_iso") do
        #it check if only two sides are equal
        it("it returns true if only two sides are equal to each other") do
            triangle_test = Triangle.new(1, 1, 3)
            expect(triangle_test.tri_iso()).to(eq(true))
        end
    end

    describe("#tri_sca") do
        #it checks if no sides are equal to the others
        it("it returns true if no sides are equal to any ofh the other sides") do
            triangle_test = Triangle.new(1, 2, 3)
            expect(triangle_test.tri_sca()).to(eq(true))
        end
    end    
end
