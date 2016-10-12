# Identify triangles by side lengths

There are three special names given to triangles that tell how many sides are equal:

* **Equilateral:** Three equal sides.
* **Isosceles:** Two equal sides.
* **Scalene:** No equal sides.

Given that create a program that tells you the type of triangle 
based on the provided 3 sides length or return an error if it's not a valid triangle.



**_Considerations:_**
 
In mathematics, the triangle inequality states that for any triangle, 
the sum of the lengths of any two sides must be greater than or equal to 
the length of the remaining side.


*Running it:*

```bash
erl -make
erl
```

Then in the REPL execute:

```erlang
1> triangle:type(1, 2, 3).
{error,violates_triangle_inequality}
2> triangle:type(100, 100, 50).
isosceles
3> triangle:type(100, 100, 100).
equilateral
4> triangle:type(10, 11, 12).  
scalene
```