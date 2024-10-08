# 2886. Change Data Type
# Easy
# Companies
# Hint
# DataFrame students
# +-------------+--------+
# | Column Name | Type   |
# +-------------+--------+
# | student_id  | int    |
# | name        | object |
# | age         | int    |
# | grade       | float  |
# +-------------+--------+
# Write a solution to correct the errors:

# The grade column is stored as floats, convert it to integers.

# The result format is in the following example.

 

# Example 1:
# Input:
# DataFrame students:
# +------------+------+-----+-------+
# | student_id | name | age | grade |
# +------------+------+-----+-------+
# | 1          | Ava  | 6   | 73.0  |
# | 2          | Kate | 15  | 87.0  |
# +------------+------+-----+-------+
# Output:
# +------------+------+-----+-------+
# | student_id | name | age | grade |
# +------------+------+-----+-------+
# | 1          | Ava  | 6   | 73    |
# | 2          | Kate | 15  | 87    |
# +------------+------+-----+-------+


# ROUGH
# import pandas as pd

# data = {
#     'student_id': [1, 2],
#     'name': ['Ava', 'Kate'],
#     'age': [6, 15],
#     'grade': [73.0, 87.0]
# }

# df = pd.DataFrame(data)

# df['grade']=df['grade'].astype(int)

# print(df.info())


# SOLUTION
import pandas as pd

def changeDatatype(students: pd.DataFrame) -> pd.DataFrame:
    students['grade']=students['grade'].astype(int)
    return students