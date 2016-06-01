/*
 * Sequencia de fibonacci em rexx
 *
 * https://en.wikipedia.org/wiki/Rexx
 *
 */

 a = 1
 b = 0

 say b

 do i = 1 to 11

	a = a + b
	b = a - b
	say b

 end
