package leap

is_leap_year :: proc(year: int) -> bool {
	if (year % 400 == 0) {
    return true
  }
  if (year % 4 == 0) {
    return true
  }
  // Implement this procedure.
	return false
}
