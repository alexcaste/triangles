require('rspec')
require('pry')
require('triangles')

describe(Triangle) do
    describe("#triangle_equal") do
        #it checks if all sides are equal
        it("returns true if side1, side2 & side3 are equal to each other") do
            triangle_test = Triangle.new(1, 1, 1)
            expect(triangle_test.triangle_equal()).to(eq(true))
        end
    end
end
