'''
Write a python program to get a list, sorted in increasing 
order by the last element in each tuple from a given list of non-empty tuples
sample list: [(2,5), (1,2), (4,4), (2,3), (2,1)]
op : [[2,1],[1,2],[2,3],[4,4], [2,5]]
'''

li = [(2,5), (1,2), (4,4), (2,3), (2,1)]

s = sorted(li, key=lambda x: x[-1])

print(s)