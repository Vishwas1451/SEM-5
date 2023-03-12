"""
You can create any other helper funtions.
Do not modify the given functions
"""
def A_star_Traversal(cost, heuristic, start_point, goals):
    """
    Perform A* Traversal and find the optimal path 
    Args:
        cost: cost matrix (list of floats/int)
        heuristic: heuristics for A* (list of floats/int)
        start_point: Staring node (int)
        goals: Goal states (list of ints)
    Returns:
        path: path to goal state obtained from A*(list of ints)
    """
    f=0
    visited=[]
    queue=[]
    path=[]
    f_sum=[]
    queue.append(start_point)
    while queue not in goals:
        if start_point in queue:
            x=queue.pop(0)
            visited.append(x)
            x1=[]
            for i in range(1,len(heuristic)):
                    if cost[x][i]!=0 and cost[x][i]!=-1:
                        queue.append(i)
                        x1.append(i)
            for i in range(0,len(x1)):
                path.append([start_point,x1[i]])
            for i in range(0,len(path)):
                sum=0
                for j in range(0,len(path[i])-1):
                    sum=sum+cost[path[i][j]][path[i][j+1]]
                sum=sum+heuristic[path[i][-1]]
                f_sum.append(sum)
            f=f+1
            
        else:
            y=1000
            x=0
            for i in range(0,len(f_sum)): 
              if path[i][-1] in goals:  
               continue 
              if f_sum[i]<y:
                y=f_sum[i]
                x=i
            x3=path.pop(x);x4=f_sum.pop(x)
            visited.append(x3[-1])
            queue2=[]
            for i in range(0,len(queue)):
                if x3[-1]!=queue[i]:
                    queue2.append(queue[i])
            queue=[];queue.extend(queue2)        
            
            x1=[]
            for i in range(1,len(heuristic)):
                    if cost[x3[-1]][i]!=0 and cost[x3[-1]][i]!=-1:
                        if i not in visited: 
                            queue.append(i)
                            x1.append(i)
            if len(x1)==0:
                path1=[];f_sum1=[]    
                for i in range(0,len(path)):
                  if path[i][-1]!=x3[-1]:
                    path1.append(path[i])
                    f_sum1.append(f_sum[i]) 
                path=[];path.extend(path1);f_sum=[];f_sum.extend(f_sum1)        
                f=f+1
                continue
            x4=len(f_sum)             
            for i in range(0,len(x1)):
                x5=[];x5.extend(x3)
                x5.append(x1[i])
                path.append(x5) 
            for i in range(x4,len(path)):
                sum=0
                for j in range(0,len(path[i])-1):
                    sum=sum+cost[path[i][j]][path[i][j+1]]
                sum=sum+heuristic[path[i][-1]]
                f_sum.append(sum) 
            path1=[];f_sum1=[]    
            for i in range(0,len(path)):
                if path[i][-1]!=x3[-1]:
                    path1.append(path[i])
                    f_sum1.append(f_sum[i]) 
            path=[];path.extend(path1);f_sum=[];f_sum.extend(f_sum1)        
            f=f+1
            v=0
            for i in queue:
                if i in goals:
                    v=v+1 
            if v>=len(goals):
                break          
                         
    y=1000
    x=0
    for i in range(0,len(f_sum)): 
        if f_sum[i]<y:
            y=f_sum[i]
            x=i        
    # TODO
    return path[x]


def DFS_Traversal(cost, start_point, goals):
    """
    Perform DFS Traversal and find the optimal path 
        cost: cost matrix (list of floats/int)
        start_point: Staring node (int)
        goals: Goal states (list of ints)
    Returns:
        path: path to goal state obtained from DFS(list of ints)
    """
    visited=[]
    stack=[start_point]
    path=[]
    for i in range(1,len(cost)):
        x=stack.pop(-1)
        visited.append(x)
        path.append(x)
        for i in range(len(cost)-1,0,-1):
            if cost[x][i]!=0 and cost[x][i]!=-1:
               if i not in visited: 
                stack.append(i)       
        if x in goals:
            break        
                
    # TODO
    return path
