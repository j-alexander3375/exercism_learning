package leap

is_leap_year :: proc(year: int) -> bool {
  if ((year % 4 == 0) || ((year % 400 == 0) && !(year % 100 == 0)) {
    return true
  }
  // Implement this procedure.
}
