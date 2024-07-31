module verifier_addr::cpu_oods_7 {

    use std::vector::{borrow, length, for_each_ref};
    // use lib_addr::math_mod::{mod_mul, mod_add, mod_exp};
    // use verifier_addr::fri_layer::FRI_QUEUE_SLOT_SIZE;
    // use verifier_addr::prime_field_element_0::{k_montgomery_r_inv, k_modulus, generator_val};
    // use verifier_addr::vector::{assign, set_el};
    // use verifier_addr::memory_map_7::{MM_N_UNIQUE_QUERIES, MM_FRI_QUEUE, MM_TRACE_QUERY_RESPONSES,
    //     MM_COMPOSITION_QUERY_RESPONSES, MM_OODS_ALPHA, MM_TRACE_GENERATOR, MM_OODS_POINT,
    //     MM_OODS_EVAL_POINTS
    // };

    const DENOMINATORS_PTR_OFFSET: vector<vector<u64>> = vector[
        vector[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
        vector[0, 1, 2, 4, 6, 8, 10, 12, 14, 16, 18, 19, 20, 22, 23, 25, 26, 27, 28, 42, 43, 57, 59, 61, 62, 63, 64, 71, 73, 75, 77],
        vector[0, 1],
        vector[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16, 20, 21, 23, 24, 29, 30, 31, 32, 38, 44, 45, 46, 47, 55, 56, 60, 65, 66, 73, 74, 78, 79, 80, 81, 94, 95, 97],
        vector[0, 1, 2, 3],
        vector[0, 1, 2, 3, 4, 5, 6, 73, 75, 77],
        vector[0, 1, 2, 3, 4, 5, 6, 7, 8, 12, 25, 33, 39, 48, 61, 67, 75, 88, 90, 92, 93, 96],
        vector[0, 1, 2, 3, 4, 5, 7, 9, 11, 13, 49, 51, 52, 53, 54, 56, 58, 82, 83, 84, 85, 86, 87, 89, 91],
        vector[0, 1, 2, 4, 5, 6, 8, 9, 10, 12, 13, 14, 16, 17, 20, 22, 26, 34, 35, 36, 37, 40, 41, 43, 44, 50, 68, 69, 70, 72, 76, 77],
        vector[0, 1],
        vector[0, 1],
        vector[0, 1, 2, 5]
    ];
    // For each query point we want to invert (2 + N_ROWS_IN_MASK) items:
    //  The query point itself (x).
    //  The denominator for the constraint polynomial (x-z^constraintDegree)
    //  [(x-(g^rowNumber)z) for rowNumber in mask].
    // uint256 constant internal BATCH_INVERSE_CHUNK = (2 + N_ROWS_IN_MASK);
    const BATCH_INVERSE_CHUNK: u64 = (2 + 98);

    fun add(x: u256, y: u256): u256 {
        x + y
    }

    fun sub(x: u256, y: u256): u256 {
        x - y
    }

    /*
      Builds and sums boundary constraints that check that the prover provided the proper evaluations
      out of domain evaluations for the trace and composition columns.

      The inputs to this function are:
          The verifier ctx.

      The boundary constraints for the trace enforce claims of the form f(g^k*z) = c by
      requiring the quotient (f(x) - c)/(x-g^k*z) to be a low degree polynomial.

      The boundary constraints for the composition enforce claims of the form h(z^d) = c by
      requiring the quotient (h(x) - c)/(x-z^d) to be a low degree polynomial.
      Where:
            f is a trace column.
            h is a composition column.
            z is the out of domain sampling point.
            g is the trace generator
            k is the offset in the mask.
            d is the degree of the composition polynomial.
            c is the evaluation sent by the prover.
    */
    public fun fallback(ctx: &mut vector<u256>) {

    }
    // assertion codes
    const BATCH_INVERSE_PRODUCT_IS_ZERO: u64 = 1;
}