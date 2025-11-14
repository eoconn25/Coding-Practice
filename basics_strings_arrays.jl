### defining variables and basic functions
x = 4
p = 5
y = ((x+2)^2-4)÷((x-2^(p-2)))
typeof(y)

x = 1//3
y = 0.5
println(x+Rational(y))

### string operations
my_string = "yellow"
letters = my_string[1:2]
println(letters)

multiline = """
Hello,
world"""  # weird
println(multiline)

repeat("bruh",3)

# f-string type functionality
println("x is of value $(x)")

# split
println(split(my_string, "l"))

# join with delimiters
join(["a", "b", "c"], "/")

### arrays
v = [1,2,3,4,5,6,7,8]
ndims(v)  # number of dimensions
eltype(v)  # type of elements in value
size(v)  # returns a tuple
length(v)

v[3]  # get third element
v[begin]  # first element
v[end]  # last element

v[[2,3]]  # get second and third elements in v

range(1; stop=10, step=2)

# get certain indices.  start:step:stop
# so our vector will start at 1, get every other number, and end at 7
v[1:2:end]

# Use array! to append to vector.  Julia adds ! to functions that modify their input.
append!(v,9:12)

# change nth element in v
v[2]=84

# use dot syntax to assign a value to multiple elements in the vector
v[3:4] .= 29

# define rows of a matrix via semicolon
m = [1 2 3 4; 5 6 7 8]
size(m)
m[1,2]  # get martix[row, column]
m[:,1:2]
m[:]

# concatenate two array
hcat(m,m)
vcat(m,m)
cat(m,m; dims=2)  # gives error if shapes don't match

v1 = collect(1:2:9)
v2 = collect(2:2:10)
m = hcat(v1,v2)
m[3,:] .= 4

# initialize array using zeros() function.  Also could do ones().
A = zeros(Int64, 3,5,2)  # 3x5x2 array of zeros
size(A)
A[1,2,2] = 64
B = fill(1.234, 2, 3, 1)

A = zeros(2,3)
B = ones(2,3,1)
C = fill(2,2,3)
cat(A,B,C,dims=3)

### broadcasting - way of looping over an array, element by element
# equivalent to a for loop, just concise syntax
# just add a dot before the operator
a = [1 2 3]
a .-= 4  # subtract 4 from each element
abs.(a)

# broadcasting makes it super convenient to calculate complex formulas on all values of an array
sum(exp.(sqrt.(abs.(a .- 1)))./2)

# matrix multiplication
a = [1, 2, 3]
b = [4, 5, 6]
#a*b  # returns error
a' * b  # where the ' is transpose
a * b'
a .* b  # element-wise multiplication