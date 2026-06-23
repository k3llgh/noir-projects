// Define the outcomes as global constants for readability
global DRAW: u8 = 0;
global MOVE2_WINS: u8 = 1;
global MOVE1_WINS: u8 = 2;

fn main(
    move1: u8, // 0 = Rock, 1 = Paper, 2 = Scissors
    move2: u8  
) -> pub u8 {  // Returns the winner publically to the verifier
    
    // 1. Semantic Guardrails: Ensure players didn't input an invalid move (like 5)
    assert(move1 <= 2);
    assert(move2 <= 2);

    // 2. The Correct Win Formula 
    // We add 3 to handle negative results before applying the modulo
    let winner = (3 + move1 - move2) % 3;

    // 3. Return the outcome
    winner
}
