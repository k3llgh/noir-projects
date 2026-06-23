fn main(
  birth_year: u32,
  current_year: u32,
  min_age: pub u32
){
  assert(current_year > birth_year);  
  let age = current_year - birth_year;
  assert(age >= min_age);
}
