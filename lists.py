# Consider a list (list = []). You can perform the following commands:
# 1. insert i e: Insert integer e at position i.
# 2. print: Print the list.
# 3. remove e: Delete the first occurrence of integer e.
# 4. append e: Insert integer e at the end of the list.
# 5. sort: Sort the list.
# 6. pop: Pop the last element from the list.
# 7. reverse: Reverse the list.

# Initialize your list and read in the value of n followed by n 
# lines of commands where each command will be of the 7 types 
# listed above. Iterate through each command in order and perform 
# the corresponding operation on your list.

# ROUGH
list = [] #initialize an empty list
n = int(input()) # Read the number of commands

# Loop through each command
for _ in range(n):
    # Read the command
    command = input().split()
    
    # Parse the command and execute the appropriate operation
    if command[0] == "insert":
        # insert i e: Insert integer e at position i.
        i = int(command[1])
        e = int(command[2])
        list.insert(i, e)
    elif command[0] == "print":
        # print: Print the list.
        print(list)
    elif command[0] == "remove":
        # remove e: Delete the first occurrence of integer e.
        e = int(command[1])
        list.remove(e)
    elif command[0] == "append":
        # append e: Insert integer e at the end of the list.
        e = int(command[1])
        list.append(e)
    elif command[0] == "sort":
        # sort: Sort the list.
        list.sort()
    elif command[0] == "pop":
        # pop: Pop the last element from the list.
        list.pop()
    elif command[0] == "reverse":
        # reverse: Reverse the list.
        list.reverse()


# SOLUTION
if __name__ == '__main__':
    N = int(input())
    lst = []

    for _ in range(N):
        command = input().split()
         
        if command[0] == 'insert':
            i, e = int(command[1]), int(command[2])
            lst.insert(i, e)
        elif command[0] == 'print':
            print(lst)
        elif command[0] == 'remove':
            e = int(command[1])
            lst.remove(e)
        elif command[0] == 'append':
            e = int(command[1])
            lst.append(e)
        elif command[0] == 'sort':
            lst.sort()
        elif command[0] == 'pop':
            lst.pop()
        elif command[0] == 'reverse':
            lst.reverse()