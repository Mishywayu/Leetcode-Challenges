# 2887. Fill Missing Data
# Easy
# Companies
# Hint
# DataFrame products
# +-------------+--------+
# | Column Name | Type   |
# +-------------+--------+
# | name        | object |
# | quantity    | int    |
# | price       | int    |
# +-------------+--------+
# Write a solution to fill in the missing value as 0 in the quantity column.

# The result format is in the following example.

 

# Example 1:
# Input:+-----------------+----------+-------+
# | name            | quantity | price |
# +-----------------+----------+-------+
# | Wristwatch      | None     | 135   |
# | WirelessEarbuds | None     | 821   |
# | GolfClubs       | 779      | 9319  |
# | Printer         | 849      | 3051  |
# +-----------------+----------+-------+
# Output:
# +-----------------+----------+-------+
# | name            | quantity | price |
# +-----------------+----------+-------+
# | Wristwatch      | 0        | 135   |
# | WirelessEarbuds | 0        | 821   |
# | GolfClubs       | 779      | 9319  |
# | Printer         | 849      | 3051  |
# +-----------------+----------+-------+


# ROUGH
# import pandas as pd

# data = {
#     'name' : ['Wristwatch', 'WirelessEarbuds', 'GolfClubs', 'Printer'],
#     'quantity' : [None, None, 779, 849],
#     'price' : [135, 821, 9319, 3051]
# }

# df = pd.DataFrame(data)

# df['quantity'] = df['quantity'].fillna(0)

# print(df.head())


# SOLUTION
import pandas as pd

def fillMissingValues(products: pd.DataFrame) -> pd.DataFrame:
    products['quantity'] = products['quantity'].fillna(0)
    return products