class student :
    def check_pass_fail(self):
        if self.marks >= 40:
            return True
        else :
            return False


    def __init__(self, name, marks) : # like construc tors
        self.name = name
        self.marks = marks

student1 = student("Harry",85)
student2 = student("Jannet",35)

did_pass = student1.check_pass_fail()
print(did_pass)

did_pass = student2.check_pass_fail()
print(did_pass)

# test program 


class triangle :
    def __init__(self,a,b,c) :
        self.a=a
        self.b=b
        self.c=c


    def clac_perimeter(self) :
        perimeter = self.a + self.b + self.c
        return perimeter


T1 = triangle(25,25,25)
T2 = triangle(75,10,10)
T2 = T1
print(id(T1))
print(id(T2))

