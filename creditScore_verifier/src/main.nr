fn main(
    credit_score: u32,
    min_score: pub u32,
    max_score: pub u32
) {
    // Bounds validation
    assert(min_score < max_score);
    
    // Range check - u32 comparisons are the way to go
    assert(credit_score > min_score);
    assert(credit_score < max_score);
}
