def cal(marks) :
    length = len(marks)
    total_marks=0
    for mark in marks :
        total_marks+=mark
    avg_marks = total_marks/length
    return avg_marks


marks = [0,0,0,0,0]
print("Enter marks in 5 subjects :")
for i in range(0,5) :
    marks[i]=int(input())

avg_marks= cal(marks)

if(avg_marks>80) :
    grade = 'A'
elif avg_marks>60 :
    grade = 'B'
elif avg_marks>50 :
    grade = 'C'
else :
    grade='F'

print("Your grade is:  ",grade)