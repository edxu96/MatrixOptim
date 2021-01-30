## Utility functions.


"Get results of variables in a vector."
function value_vec(vec_x::Union{Array{VariableRef,1}, VariableRef})
    if isa(vec_x, VariableRef)
        vec_value = value(vec_x)
    else
        vec_value = [value(vec_x[i]) for i = 1:length(vec_x)]
    end

    return vec_value
end


"Get results of dual variables in a vector."
function dual_vec(vec_cons)
    return [dual(vec_cons[i]) for i = 1:length(vec_cons)]
end


@enum ColRow begin
   row = 1
   col = 2
end


"Check if the array is a column vector."
function check_col_vec(vec::Array{Int64,2}, str_name::String)
    if size(vec)[Int(col)] != 1
        throw("$str_name is not a column vector")
    end
end


# """

# Check if the size of the matrix if right.

# # Arguments:
# - 
# """
# function check_mat_match(
#     vec::Array{Float64,2},
#     array::Array{Int64,2},
#     whi::ColRow,
#     str_len::String,
#     str_array::String,
# )
#     if size(array)[Int(whi)] != len
#         throw("The $(str(whi)) of $str_array doesn't match the $str_len.")
#     end
# end


"Check if the length of the list is right."
function check_li_match(
        len::Float64, list::Array{Int64,1}, str_len::String, str_list::String,
        )
    if length(list_1) != length(list_2)
        throw("The length of list $str_list doesn't match the $str_len.")
    end
end
