︠abc9cbfc-fb5b-4158-a4ff-40054084d9f2s︠
n = 5
︡f0eec533-e1fa-4958-8c63-e5f3a1e00888︡{"done":true}
︠3e455043-eb34-48ce-b8bf-25745ceab1b3s︠
family = [column_matrix(QQ, [1, 2, 3, 4, 5]), column_matrix(QQ, [2, 4, 6, 8, 10]), column_matrix(QQ, [1, 2, 3, 4, 6]), column_matrix(QQ, [1, 0, 0, 0, 0]) ]
︡1bf6ef87-ed10-4385-9e1f-c650139d164e︡{"done":true}
︠171c8730-485c-4e36-9eef-8865470c7cc6s︠
show(family)
︡18a03df3-95dd-4242-9136-431d0ce7333f︡{"html":"<div align='center'>[$\\displaystyle \\left(\\begin{array}{r}\n1 \\\\\n2 \\\\\n3 \\\\\n4 \\\\\n5\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{r}\n2 \\\\\n4 \\\\\n6 \\\\\n8 \\\\\n10\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{r}\n1 \\\\\n2 \\\\\n3 \\\\\n4 \\\\\n6\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{r}\n1 \\\\\n0 \\\\\n0 \\\\\n0 \\\\\n0\n\\end{array}\\right)$]</div>"}︡{"done":true}
︠89fa2545-8c85-42bd-9341-4a9c8902b611︠
basis_F = []
basis_F_C = []

# Testst if the family contains a vector. If it dosn't, nothing happens (as this would be a boring problem)

if(len(family)>0):
    
    #Puts all the vectors in the family in a matrix
    mat = matrix(QQ, family[0])
    for i in range(1, len(family)):
        mat = mat.augment(family[i])
    
    #augments the matrix with the identity matrix. No it is guaranteed that the matrix contains all necessary basis vectors as coulumns
    mat = mat.augment(identity_matrix(5), subdivide=True)
    
    #calculates the echelon form of that matrix. The position of all basis vectors can now be read as the position of the pivot elements.
    echelon = mat.echelon_form()
    
    c = 0
    
    # finds all the pivot elements; if it is a pivot element this vector is a basis vector of the given space and will be added to the list of basis vectors
    for i in range(len(family)+n):
        #checks if pivot element
        if(c<n and echelon[c, i]==1):
            c = c+1
            #checks if it is part of the given family of vectors; appends the vector to the according list
            if(i<len(family)):
                basis_F.append(mat[:, i])
            else:
                basis_F_C.append(mat[:, i])
︡2a208f52-29fc-4f4a-a770-655d57743942︡{"done":true}
︠f48f22d5-e3be-48fc-b947-ad5ccd0e913ds︠
 show(basis_F)
︡4b8188c9-a546-48ae-837a-7f7287b70e67︡{"html":"<div align='center'>[$\\displaystyle \\left(\\begin{array}{r}\n1 \\\\\n2 \\\\\n3 \\\\\n4 \\\\\n5\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{r}\n1 \\\\\n2 \\\\\n3 \\\\\n4 \\\\\n6\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{r}\n1 \\\\\n0 \\\\\n0 \\\\\n0 \\\\\n0\n\\end{array}\\right)$]</div>"}︡{"done":true}
︠5e6f4409-2200-4812-be46-90f06973b6f0s︠
show(basis_F_C)
︡079dc7c6-1ca4-4b68-8e7a-2e2d01148090︡{"html":"<div align='center'>[$\\displaystyle \\left(\\begin{array}{r}\n0 \\\\\n1 \\\\\n0 \\\\\n0 \\\\\n0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{r}\n0 \\\\\n0 \\\\\n1 \\\\\n0 \\\\\n0\n\\end{array}\\right)$]</div>"}︡{"done":true}
︠52cd0068-5d57-4cef-b606-f9ba848d37bf︠









