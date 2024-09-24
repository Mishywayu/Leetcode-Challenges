# 2881. Create a New Column
# Easy
# Companies
# Hint
# DataFrame employees
# +-------------+--------+
# | Column Name | Type.  |
# +-------------+--------+
# | name        | object |
# | salary      | int.   |
# +-------------+--------+
# A company plans to provide its employees with a bonus.

# Write a solution to create a new column name bonus that contains the doubled values of the salary column.

# The result format is in the following example.

 

# Example 1:

# Input:
# DataFrame employees
# +---------+--------+
# | name    | salary |
# +---------+--------+
# | Piper   | 4548   |
# | Grace   | 28150  |
# | Georgia | 1103   |
# | Willow  | 6593   |
# | Finn    | 74576  |
# | Thomas  | 24433  |
# +---------+--------+
# Output:
# +---------+--------+--------+
# | name    | salary | bonus  |
# +---------+--------+--------+
# | Piper   | 4548   | 9096   |
# | Grace   | 28150  | 56300  |
# | Georgia | 1103   | 2206   |
# | Willow  | 6593   | 13186  |
# | Finn    | 74576  | 149152 |
# | Thomas  | 24433  | 48866  |
# +---------+--------+--------+



# ROUGH
# import pandas as pd

# data = {
#     "name": ["Piper", "Grace", "Georgia", "Willow", "Finn", "Thomas"],
#     "salary": [4548, 28150, 1103, 6593, 74576, 24433]
# }

# df = pd.DataFrame(data)

# def createBonusColumn():
#     for sal in df['salary']:
#         df['bonus'] = df['salary'] * 2
#     return df

# print (createBonusColumn())


# SOLUTION
import pandas as pd

def createBonusColumn(employees: pd.DataFrame) -> pd.DataFrame:
    for sal in employees['salary']:
        employees['bonus'] = employees['salary'] * 2
    return employees