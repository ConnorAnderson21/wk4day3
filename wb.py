# You need to write a function, that returns the first non-repeated character in the given string.

# If all the characters are unique, return the first character of the string.
# If there is no unique character, return None.

# You can assume, that the input string has always non-zero length.

# Examples
# "test"   returns "e"
# "teeter" returns "r"
# "trend"  returns "t" (all the characters are unique)
# "aabbcc" returns None (all the characters are repeated)



def nonrepeat(string):
    for s in string:    #0(n)
        if string.count(s) == 1:  #0(n)
            return s      
            
            #0(n**2) time  0(1 space)  
        
x = "aabbcc"
print(nonrepeat(x))