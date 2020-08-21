"""

The exported names are
$(EXPORTS)
"""
module MultiField

using DocStringExtensions
using Gridap.Helpers
using Gridap.Algebra
using Gridap.Arrays
using Gridap.FESpaces
using Gridap.Geometry
using Gridap.Integration
using Gridap.Inference
using Gridap.TensorValues
using Gridap.CellData
using Gridap.Fields


using FillArrays
using SparseArrays
using LinearAlgebra
using BlockArrays


#import LinearAlgebra: mul!
#using LinearAlgebra: Transpose
#using LinearAlgebra: dot
#
##using Gridap.Arrays: IdentityVector
##using Gridap.FESpaces: _operate_cell_basis
##using Gridap.FESpaces: _operate_cell_matrix_field
##using Gridap.FESpaces: SkeletonCellBasis
#using Gridap.FESpaces: interpolate!
#using Gridap.FESpaces: interpolate_everywhere!
#using Gridap.FESpaces: interpolate_dirichlet!

#import Gridap.Helpers: operate
#import Gridap.Arrays: get_array
#import Gridap.Arrays: array_cache
#import Gridap.Arrays: getindex!
#import Gridap.Arrays: reindex
#import Gridap.Arrays: add_to_array!
#import Gridap.Arrays: kernel_cache
#import Gridap.Arrays: apply_kernel!
#import Gridap.Geometry: get_cell_map
#import Gridap.Geometry: similar_object
#import Gridap.Geometry: change_ref_style
#import Gridap.Geometry: restrict
#import Gridap.Fields: integrate
#import Gridap.Fields: evaluate
#import Gridap.FESpaces: TrialStyle
#import Gridap.FESpaces: RefStyle
#import Gridap.FESpaces: FECellBasisStyle
#import Gridap.FESpaces: FEFunctionStyle
#import Gridap.FESpaces: num_free_dofs
#import Gridap.FESpaces: get_cell_basis
#import Gridap.FESpaces: FEFunction
#import Gridap.FESpaces: zero_free_values
#import Gridap.FESpaces: constraint_style
#import Gridap.FESpaces: get_constraint_kernel_matrix_cols
#import Gridap.FESpaces: get_constraint_kernel_matrix_rows
#import Gridap.FESpaces: get_constraint_kernel_vector
#import Gridap.FESpaces: get_cell_isconstrained
#import Gridap.FESpaces: get_cell_constraints
#import Gridap.FESpaces: get_cell_dofs
#import Gridap.FESpaces: get_fe_space
#import Gridap.FESpaces: get_free_values
#import Gridap.FESpaces: get_cell_values
#import Gridap.FESpaces: get_test
#import Gridap.FESpaces: get_trial
#import Gridap.FESpaces: allocate_vector
#import Gridap.FESpaces: assemble_vector!
#import Gridap.FESpaces: assemble_vector_add!
#import Gridap.FESpaces: allocate_matrix
#import Gridap.FESpaces: assemble_matrix!
#import Gridap.FESpaces: assemble_matrix_add!
#import Gridap.FESpaces: assemble_matrix
#import Gridap.FESpaces: allocate_matrix_and_vector
#import Gridap.FESpaces: assemble_matrix_and_vector!
#import Gridap.FESpaces: assemble_matrix_and_vector_add!
#import Gridap.FESpaces: assemble_matrix_and_vector
#import Gridap.FESpaces: SparseMatrixAssembler
#import Gridap.FESpaces: AffineFEOperator
#import Gridap.FESpaces: FEOperator
#import Gridap.FESpaces: EvaluationFunction
#import Gridap.FESpaces: get_matrix_type
#import Gridap.FESpaces: get_vector_type
#import Gridap.FESpaces: get_assembly_strategy
#import Gridap.FESpaces: count_matrix_nnz_coo
#import Gridap.FESpaces: fill_matrix_coo_symbolic!
#import Gridap.FESpaces: fill_matrix_coo_numeric!
#import Gridap.FESpaces: fill_matrix_and_vector_coo_numeric!
#import Gridap.FESpaces: count_matrix_and_vector_nnz_coo
#import Gridap.FESpaces: fill_matrix_and_vector_coo_symbolic!
#import Gridap.FESpaces: interpolate
#import Gridap.FESpaces: interpolate_everywhere
#import Gridap.FESpaces: interpolate_dirichlet
#
#import Base: +, -

export num_fields
export compute_field_offsets
export restrict_to_field
export MultiFieldCellField
export MultiFieldFESpace
export MultiFieldFEFunction
export MultiFieldStyle
export ConsecutiveMultiFieldStyle
#export MultiFieldSparseMatrixAssembler

#export MultiFieldArray
#export get_block_size
#export num_blocks
#export num_stored_blocks
#export has_all_blocks

include("MultiFieldCellFields.jl")

include("MultiFieldFESpaces.jl")

include("MultiFieldFEFunctions.jl")

#include("MultiFieldArrays.jl")
#
#include("MultiFieldCellArrays.jl")
#
#include("MultiFieldCellBases.jl")
#
#include("MultiFieldCellKernels.jl")
#
#
#
#include("MultiFieldSparseMatrixAssemblers.jl")
#
#include("MultiFieldFEOperators.jl")

end # module
