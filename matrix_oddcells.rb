# @param {Integer} n
# @param {Integer} m
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(n, m, indices)
    #create initial matrix
    num_of_rows = n
    num_of_cols = m
    
    matrix_array = []
 
    #populate matrix with intial values
    row = 0
    while row < num_of_rows
        matrix_array.push([])
        col = 0
        while col < num_of_cols
            matrix_array[row].push(0)
            col += 1
        end    
        row += 1
    end

    #loop through indices 
    
    index = 0
    while index < indices.length
        row_index = indices[index][0]
        col_index = indices[index][1]
        
        #add 1 to row/col based on indices
        #loop through rows
        i = 0
        while i < matrix_array.length #row
            #loop through col
            j = 0
            while j < matrix_array[0].length #column
                #check if rows = indices[0]
                if i == row_index
                    #add 1 to row-column value
                    matrix_array[i][j] = matrix_array[i][j] + 1
                end
                #check if column = indices[1]
                if j == col_index
                #add 1 to row-column value
                    matrix_array[i][j] = matrix_array[i][j] + 1
                end
                j += 1
            end #end of col loop
            i += 1
        end #end of row loop
       index += 1
    end #end of indices

    #puts matrix_array 
        #get count of odd values
        count = 0
        #loop through rows
        i = 0
        while i < matrix_array.length #row
            #loop through column
            j = 0
            while j < matrix_array[0].length #column
                #check if row-colum value % 2 != 0
                value = matrix_array[i][j] % 2
                if value != 0
                #add to count
                count = count + 1
                end
                j += 1
            end
            i += 1
        end #end of row loop
    
    return count
    
end #method


