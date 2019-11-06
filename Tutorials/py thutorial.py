#
# Example
#

# def main():
#     print("hello world ")

# if __name__ == "__main__":
#     main()

f=0

def someFunction():
    global f
    f="def"
    print(f)

someFunction()
print(f)

del f
print(f)